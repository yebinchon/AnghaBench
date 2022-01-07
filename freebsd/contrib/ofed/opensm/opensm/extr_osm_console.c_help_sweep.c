
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_sweep(FILE * out, int detail)
{
 fprintf(out, "sweep [on|off]\n");
 if (detail) {
  fprintf(out, "enable or disable sweeping\n");
  fprintf(out, "   [on] sweep normally\n");
  fprintf(out, "   [off] inhibit all sweeping\n");
 }
}
