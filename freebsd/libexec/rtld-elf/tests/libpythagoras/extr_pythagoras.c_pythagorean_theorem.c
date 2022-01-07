
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int errno ;
 scalar_t__ pow (double,int) ;
 double sqrt (scalar_t__) ;

double
pythagorean_theorem(double a, double b)
{

 if (a <= 0 || b <= 0) {
  errno = ERANGE;
  return (-1.0);
 }
 return (sqrt(pow(a, 2) + pow(b, 2)));
}
