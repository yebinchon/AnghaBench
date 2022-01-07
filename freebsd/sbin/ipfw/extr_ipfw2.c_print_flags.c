
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct buf_pr {int dummy; } ;
struct _s_x {int x; int s; } ;
struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ ipfw_insn ;


 int TH_ACK ;
 int TH_SYN ;
 int bprintf (struct buf_pr*,char*,...) ;
 struct _s_x* f_tcpflags ;

__attribute__((used)) static void
print_flags(struct buf_pr *bp, char const *name, ipfw_insn *cmd,
    struct _s_x *list)
{
 char const *comma = "";
 int i;
 uint8_t set = cmd->arg1 & 0xff;
 uint8_t clear = (cmd->arg1 >> 8) & 0xff;

 if (list == f_tcpflags && set == TH_SYN && clear == TH_ACK) {
  bprintf(bp, " setup");
  return;
 }

 bprintf(bp, " %s ", name);
 for (i=0; list[i].x != 0; i++) {
  if (set & list[i].x) {
   set &= ~list[i].x;
   bprintf(bp, "%s%s", comma, list[i].s);
   comma = ",";
  }
  if (clear & list[i].x) {
   clear &= ~list[i].x;
   bprintf(bp, "%s!%s", comma, list[i].s);
   comma = ",";
  }
 }
}
