
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long NMAX ;
 long NMIN ;
 long double scalbnl (long double,long) ;

long double
scalblnl(long double x, long n)
{

 return (scalbnl(x, (n > NMAX) ? NMAX : (n < NMIN) ? NMIN : (int)n));
}
