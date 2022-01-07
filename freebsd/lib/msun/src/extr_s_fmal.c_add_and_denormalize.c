
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manl; } ;
union IEEEl2bits {TYPE_1__ bits; int e; } ;
struct dd {int lo; int hi; } ;


 int INFINITY ;
 struct dd dd_add (long double,long double) ;
 long double ldexp (int ,int) ;
 int nextafterl (int ,int) ;

__attribute__((used)) static inline long double
add_and_denormalize(long double a, long double b, int scale)
{
 struct dd sum;
 int bits_lost;
 union IEEEl2bits u;

 sum = dd_add(a, b);
 if (sum.lo != 0) {
  u.e = sum.hi;
  bits_lost = -u.bits.exp - scale + 1;
  if ((bits_lost != 1) ^ (int)(u.bits.manl & 1))
   sum.hi = nextafterl(sum.hi, INFINITY * sum.lo);
 }
 return (ldexp(sum.hi, scale));
}
