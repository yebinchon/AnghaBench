
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ipfw_insn_u16 ;
struct TYPE_4__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int f_reserved_keywords ;
 scalar_t__ fill_newports (int *,char*,int ,int) ;
 int match_token (int ,char*) ;

__attribute__((used)) static ipfw_insn *
add_ports(ipfw_insn *cmd, char *av, u_char proto, int opcode, int cblen)
{

 if (match_token(f_reserved_keywords, av) != -1)
  return (((void*)0));

 if (fill_newports((ipfw_insn_u16 *)cmd, av, proto, cblen)) {

  cmd->opcode = opcode;
  return cmd;
 }
 return ((void*)0);
}
