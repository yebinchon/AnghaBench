
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
struct dd {int lo; long double hi; } ;


 int INFINITY ;
 struct dd dd_add (long double,long double) ;
 long double nextafterl (long double,int) ;

__attribute__((used)) static inline long double
add_adjusted(long double a, long double b)
{
 struct dd sum;
 union IEEEl2bits u;

 sum = dd_add(a, b);
 if (sum.lo != 0) {
  u.e = sum.hi;
  if ((u.bits.manl & 1) == 0)
   sum.hi = nextafterl(sum.hi, INFINITY * sum.lo);
 }
 return (sum.hi);
}
