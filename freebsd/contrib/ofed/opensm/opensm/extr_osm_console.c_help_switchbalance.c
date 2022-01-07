
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_switchbalance(FILE * out, int detail)
{
 fprintf(out, "switchbalance [verbose] [guid]\n");
 if (detail) {
  fprintf(out, "output switch balancing information\n");
  fprintf(out,
   "  [verbose] -- verbose output\n"
   "  [guid] -- limit results to specified guid\n");
 }
}
