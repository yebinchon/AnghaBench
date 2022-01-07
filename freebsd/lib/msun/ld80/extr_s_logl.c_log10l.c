
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
 long double invln10_hi ;
 long double invln10_lo ;
 int k_logl (long double,struct ld*) ;

long double
log10l(long double x)
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
 RETURN2PI(invln10_hi * hi,
     (invln10_lo + invln10_hi) * lo + invln10_lo * hi);
}
