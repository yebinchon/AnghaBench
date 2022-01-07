
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 int AF_INET ;
 int AF_INET6 ;
 int ai_fam_default ;
 int ai_fam_templ ;
 char* currenthost ;
 int fprintf (int *,char*,...) ;
 scalar_t__ havehost ;
 scalar_t__ openhost (int ,int ) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void
host(
 struct parse *pcmd,
 FILE *fp
 )
{
 int i;

 if (pcmd->nargs == 0) {
  if (havehost)
   (void) fprintf(fp, "current host is %s\n",
        currenthost);
  else
   (void) fprintf(fp, "no current host\n");
  return;
 }

 i = 0;
 ai_fam_templ = ai_fam_default;
 if (pcmd->nargs == 2) {
  if (!strcmp("-4", pcmd->argval[i].string))
   ai_fam_templ = AF_INET;
  else if (!strcmp("-6", pcmd->argval[i].string))
   ai_fam_templ = AF_INET6;
  else
   goto no_change;
  i = 1;
 }
 if (openhost(pcmd->argval[i].string, ai_fam_templ)) {
  fprintf(fp, "current host set to %s\n", currenthost);
 } else {
    no_change:
  if (havehost)
   fprintf(fp, "current host remains %s\n",
    currenthost);
  else
   fprintf(fp, "still no current host\n");
 }
}
