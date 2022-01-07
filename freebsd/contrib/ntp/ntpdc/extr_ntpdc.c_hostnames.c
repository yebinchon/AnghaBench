
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 scalar_t__ STREQ (int ,char*) ;
 int fprintf (int *,char*) ;
 int showhostnames ;
 int * stderr ;

__attribute__((used)) static void
hostnames(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  if (showhostnames)
      (void) fprintf(fp, "hostnames being shown\n");
  else
      (void) fprintf(fp, "hostnames not being shown\n");
 } else {
  if (STREQ(pcmd->argval[0].string, "yes"))
      showhostnames = 1;
  else if (STREQ(pcmd->argval[0].string, "no"))
      showhostnames = 0;
  else
      (void)fprintf(stderr, "What?\n");
 }
}
