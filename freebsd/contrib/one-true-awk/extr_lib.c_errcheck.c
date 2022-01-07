
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDOM ;
 scalar_t__ ERANGE ;
 int WARNING (char*,char const*) ;
 scalar_t__ errno ;

double errcheck(double x, const char *s)
{

 if (errno == EDOM) {
  errno = 0;
  WARNING("%s argument out of domain", s);
  x = 1;
 } else if (errno == ERANGE) {
  errno = 0;
  WARNING("%s result out of range", s);
  x = 1;
 }
 return x;
}
