
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_command {size_t opc; } ;


 size_t nitems (char const**) ;
 char const** nvme_opc2str ;

const char *
nvme_op_string(const struct nvme_command *cmd, int admin)
{

 if (admin) {
  return "ADMIN";
 } else {
  if (cmd->opc >= nitems(nvme_opc2str))
   return "UNKNOWN";
  return nvme_opc2str[cmd->opc];
 }
}
