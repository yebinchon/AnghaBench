
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long NMAX ;
 long NMIN ;
 float scalbnf (float,long) ;

float
scalblnf(float x, long n)
{

 return (scalbnf(x, (n > NMAX) ? NMAX : (n < NMIN) ? NMIN : (int)n));
}
