
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long double lo; long double hi; } ;


 long double A2 ;
 long double A3 ;
 long double A4 ;
 long double A5 ;
 long double A6 ;
 unsigned int INTERVALS ;
 long double INV_L ;
 long double L1 ;
 long double L2 ;
 int LOG2_INTERVALS ;
 int irint (long double) ;
 long double rnintl (long double) ;
 TYPE_1__* tbl ;

__attribute__((used)) static inline void
__k_expl(long double x, long double *hip, long double *lop, int *kp)
{
 long double fn, q, r, r1, r2, t, z;
 int n, n2;


 fn = rnintl(x * INV_L);
 r = x - fn * L1 - fn * L2;
 n = irint(fn);
 n2 = (unsigned)n % INTERVALS;

 *kp = n >> LOG2_INTERVALS;
 r1 = x - fn * L1;
 r2 = fn * -L2;


 z = r * r;



 q = r2 + z * A2 + z * r * (A3 + r * A4 + z * (A5 + r * A6));

 t = (long double)tbl[n2].lo + tbl[n2].hi;
 *hip = tbl[n2].hi;
 *lop = tbl[n2].lo + t * (q + r1);
}
