
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long double
__polevll(long double x, long double *PP, int n)
{
 long double y;
 long double *P;

 P = PP;
 y = *P++;
 do {
  y = y * x + *P++;
 } while (--n);

 return (y);
}
