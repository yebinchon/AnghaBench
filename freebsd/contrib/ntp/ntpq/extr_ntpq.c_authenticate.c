
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 scalar_t__ STREQ (int ,char*) ;
 int always_auth ;
 int fprintf (int *,char*) ;
 int * stderr ;

__attribute__((used)) static void
authenticate(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  if (always_auth) {
   (void) fprintf(fp,
           "authenticated requests being sent\n");
  } else
      (void) fprintf(fp,
       "unauthenticated requests being sent\n");
 } else {
  if (STREQ(pcmd->argval[0].string, "yes")) {
   always_auth = 1;
  } else if (STREQ(pcmd->argval[0].string, "no")) {
   always_auth = 0;
  } else
      (void)fprintf(stderr, "What?\n");
 }
}
