
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIAS ;
 int SET_LDBL_EXPSIGN (long double,scalar_t__) ;
 int __k_expl (long double,long double*,long double*,int*) ;

__attribute__((used)) static inline long double
hexpl(long double x)
{
 long double hi, lo, twopkm2;
 int k;

 twopkm2 = 1;
 __k_expl(x, &hi, &lo, &k);
 SET_LDBL_EXPSIGN(twopkm2, BIAS + k - 2);
 return (lo + hi) * 2 * twopkm2;
}
