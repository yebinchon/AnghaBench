
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dd {double hi; double lo; } ;



__attribute__((used)) static inline struct dd
dd_add(double a, double b)
{
 struct dd ret;
 double s;

 ret.hi = a + b;
 s = ret.hi - a;
 ret.lo = (a - (ret.hi - s)) + (b - s);
 return (ret);
}
