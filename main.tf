provider "aws" {
  region = "us-east-1"
}

# TF-UPGRADE-TODO: In Terraform v0.11 and earlier, it was possible to begin a
# resource name with a number, but it is no longer possible in Terraform v0.12.
#
# Rename the resource and run `terraform state mv` to apply the rename in the
# state. Detailed information on the `state move` command can be found in the
# documentation online: https://www.terraform.io/docs/commands/state/mv.html
resource "aws_db_instance" "Yaroslav" {
  allocated_storage         = 20
  storage_type              = "gp2"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = "mydb"
  username                  = "foo"
  password                  = "foobarbaz"
  parameter_group_name      = "default.mysql5.7"
  final_snapshot_identifier = "foo"
}

