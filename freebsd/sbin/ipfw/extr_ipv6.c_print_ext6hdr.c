
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buf_pr {int dummy; } ;
struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ ipfw_insn ;


 int EXT_AH ;
 int EXT_DSTOPTS ;
 int EXT_ESP ;
 int EXT_FRAGMENT ;
 int EXT_HOPOPTS ;
 int EXT_ROUTING ;
 int EXT_RTHDR0 ;
 int EXT_RTHDR2 ;
 int bprintf (struct buf_pr*,char*,...) ;

void
print_ext6hdr(struct buf_pr *bp, ipfw_insn *cmd )
{
 char sep = ' ';

 bprintf(bp, " extension header:");
 if (cmd->arg1 & EXT_FRAGMENT) {
  bprintf(bp, "%cfragmentation", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_HOPOPTS) {
  bprintf(bp, "%chop options", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_ROUTING) {
  bprintf(bp, "%crouting options", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_RTHDR0) {
  bprintf(bp, "%crthdr0", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_RTHDR2) {
  bprintf(bp, "%crthdr2", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_DSTOPTS) {
  bprintf(bp, "%cdestination options", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_AH) {
  bprintf(bp, "%cauthentication header", sep);
  sep = ',';
 }
 if (cmd->arg1 & EXT_ESP) {
  bprintf(bp, "%cencapsulated security payload", sep);
 }
}
