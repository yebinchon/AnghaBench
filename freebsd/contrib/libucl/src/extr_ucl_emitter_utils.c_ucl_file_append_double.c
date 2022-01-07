
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DBL_DIG ;
 double const fabs (double) ;
 int fprintf (int *,char*,double,...) ;

__attribute__((used)) static int
ucl_file_append_double (double val, void *ud)
{
 FILE *fp = ud;
 const double delta = 0.0000001;

 if (val == (double)(int)val) {
  fprintf (fp, "%.1lf", val);
 }
 else if (fabs (val - (double)(int)val) < delta) {

  fprintf (fp, "%.*lg", DBL_DIG, val);
 }
 else {
  fprintf (fp, "%lf", val);
 }

 return 0;
}
