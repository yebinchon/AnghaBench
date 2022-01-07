
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long NMAX ;
 long NMIN ;
 double scalbn (double,long) ;

double
scalbln(double x, long n)
{

 return (scalbn(x, (n > NMAX) ? NMAX : (n < NMIN) ? NMIN : (int)n));
}
