
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_lidbalance(FILE * out, int detail)
{
 fprintf(out, "lidbalance [switchguid]\n");
 if (detail) {
  fprintf(out, "output lid balanced forwarding information\n");
  fprintf(out,
   "  [switchguid] -- limit results to specified switch guid\n");
 }
}
