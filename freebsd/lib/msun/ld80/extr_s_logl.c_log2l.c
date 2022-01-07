
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld {long double hi; long double lo; int lo_set; } ;


 int DOPRINT_START (long double*) ;
 int ENTERI () ;
 int RETURN2PI (long double,long double) ;
 int RETURNPI (long double) ;
 int _2sumF (long double,long double) ;
 long double invln2_hi ;
 long double invln2_lo ;
 int k_logl (long double,struct ld*) ;

long double
log2l(long double x)
{
 struct ld r;
 long double hi, lo;

 ENTERI();
 DOPRINT_START(&x);
 k_logl(x, &r);
 if (!r.lo_set)
  RETURNPI(r.hi);
 _2sumF(r.hi, r.lo);
 hi = (float)r.hi;
 lo = r.lo + (r.hi - hi);
 RETURN2PI(invln2_hi * hi,
     (invln2_lo + invln2_hi) * lo + invln2_lo * hi);
}
