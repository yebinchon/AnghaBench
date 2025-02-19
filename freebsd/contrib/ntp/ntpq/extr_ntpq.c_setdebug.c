
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 scalar_t__ STREQ (int ,char*) ;
 int debug ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
setdebug(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  (void) fprintf(fp, "debug level is %d\n", debug);
  return;
 } else if (STREQ(pcmd->argval[0].string, "no")) {
  debug = 0;
 } else if (STREQ(pcmd->argval[0].string, "more")) {
  debug++;
 } else if (STREQ(pcmd->argval[0].string, "less")) {
  debug--;
 } else {
  (void) fprintf(fp, "What?\n");
  return;
 }
 (void) fprintf(fp, "debug level set to %d\n", debug);
}
