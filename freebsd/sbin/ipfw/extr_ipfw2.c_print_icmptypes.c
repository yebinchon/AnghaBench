
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buf_pr {int dummy; } ;
struct TYPE_3__ {int* d; } ;
typedef TYPE_1__ ipfw_insn_u32 ;


 int bprintf (struct buf_pr*,char*,...) ;

__attribute__((used)) static void
print_icmptypes(struct buf_pr *bp, ipfw_insn_u32 *cmd)
{
 int i;
 char sep= ' ';

 bprintf(bp, " icmptypes");
 for (i = 0; i < 32; i++) {
  if ( (cmd->d[0] & (1 << (i))) == 0)
   continue;
  bprintf(bp, "%c%d", sep, i);
  sep = ',';
 }
}
