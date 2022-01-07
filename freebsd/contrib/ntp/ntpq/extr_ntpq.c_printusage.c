
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcmd {char* keyword; int* arg; char** desc; } ;
typedef int FILE ;


 int MAXARGS ;
 int NO ;
 int OPT ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
printusage(
 struct xcmd *xcp,
 FILE *fp
 )
{
 register int i;



 (void) fprintf(fp, "usage: %s", xcp->keyword);
 for (i = 0; i < MAXARGS && xcp->arg[i] != NO; i++) {
  if (xcp->arg[i] & OPT)
      (void) fprintf(fp, " [ %s ]", xcp->desc[i]);
  else
      (void) fprintf(fp, " %s", xcp->desc[i]);
 }
 (void) fprintf(fp, "\n");
}
