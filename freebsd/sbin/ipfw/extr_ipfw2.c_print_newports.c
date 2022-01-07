
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct buf_pr {int dummy; } ;
struct TYPE_3__ {scalar_t__* ports; } ;
typedef TYPE_1__ ipfw_insn_u16 ;
typedef int ipfw_insn ;


 int F_LEN (int *) ;
 int _port_name ;
 int bprintf (struct buf_pr*,char*,...) ;
 char* match_value (int ,int) ;
 int print_port (struct buf_pr*,int,scalar_t__) ;

__attribute__((used)) static void
print_newports(struct buf_pr *bp, ipfw_insn_u16 *cmd, int proto, int opcode)
{
 uint16_t *p = cmd->ports;
 int i;
 char const *sep;

 if (opcode != 0) {
  sep = match_value(_port_name, opcode);
  if (sep == ((void*)0))
   sep = "???";
  bprintf(bp, " %s", sep);
 }
 sep = " ";
 for (i = F_LEN((ipfw_insn *)cmd) - 1; i > 0; i--, p += 2) {
  bprintf(bp, "%s", sep);
  print_port(bp, proto, p[0]);
  if (p[0] != p[1]) {
   bprintf(bp, "-");
   print_port(bp, proto, p[1]);
  }
  sep = ",";
 }
}
