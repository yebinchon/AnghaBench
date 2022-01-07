
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ipfw_insn_u16 ;
struct TYPE_4__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int EX_DATAERR ;
 int IPPROTO_ETHERTYPE ;
 int O_MAC_TYPE ;
 int errx (int ,char*) ;
 int fill_newports (int *,char*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static ipfw_insn *
add_mactype(ipfw_insn *cmd, char *av, int cblen)
{
 if (!av)
  errx(EX_DATAERR, "missing MAC type");
 if (strcmp(av, "any") != 0) {
  fill_newports((ipfw_insn_u16 *)cmd, av, IPPROTO_ETHERTYPE,
      cblen);
  cmd->opcode = O_MAC_TYPE;
  return cmd;
 } else
  return ((void*)0);
}
