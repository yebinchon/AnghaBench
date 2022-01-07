
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nbuf ;


 int DBL_DIG ;
 double const fabs (double) ;
 int snprintf (char*,int,char*,double,...) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int
ucl_fd_append_double (double val, void *ud)
{
 int fd = *(int *)ud;
 const double delta = 0.0000001;
 char nbuf[64];

 if (val == (double)(int)val) {
  snprintf (nbuf, sizeof (nbuf), "%.1lf", val);
 }
 else if (fabs (val - (double)(int)val) < delta) {

  snprintf (nbuf, sizeof (nbuf), "%.*lg", DBL_DIG, val);
 }
 else {
  snprintf (nbuf, sizeof (nbuf), "%lf", val);
 }

 return write (fd, nbuf, strlen (nbuf));
}
