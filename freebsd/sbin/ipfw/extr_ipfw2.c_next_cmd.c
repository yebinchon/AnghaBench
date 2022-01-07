
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipfw_insn ;


 int CHECK_LENGTH (int,int ) ;
 scalar_t__ F_LEN (int *) ;
 int bzero (int *,int) ;

__attribute__((used)) static ipfw_insn *
next_cmd(ipfw_insn *cmd, int *len)
{
 *len -= F_LEN(cmd);
 CHECK_LENGTH(*len, 0);
 cmd += F_LEN(cmd);
 bzero(cmd, sizeof(*cmd));
 return cmd;
}
