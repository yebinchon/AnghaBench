
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UT_string ;


 int DBL_DIG ;
 double const fabs (double) ;
 int utstring_printf (int *,char*,double,...) ;

__attribute__((used)) static int
ucl_utstring_append_double (double val, void *ud)
{
 UT_string *buf = ud;
 const double delta = 0.0000001;

 if (val == (double)(int)val) {
  utstring_printf (buf, "%.1lf", val);
 }
 else if (fabs (val - (double)(int)val) < delta) {

  utstring_printf (buf, "%.*lg", DBL_DIG, val);
 }
 else {
  utstring_printf (buf, "%lf", val);
 }

 return 0;
}
