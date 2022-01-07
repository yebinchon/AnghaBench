
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld {float hi; float lo; int lo_set; } ;


 int DOPRINT_START (long double*) ;
 int ENTERI () ;
 int RETURN2PI (float,float) ;
 int RETURNPI (float) ;
 int _2sumF (float,float) ;
 float invln10_hi ;
 float invln10_lo ;
 int k_logl (long double,struct ld*) ;

long double
log10l(long double x)
{
 struct ld r;
 long double lo;
 float hi;

 ENTERI();
 DOPRINT_START(&x);
 k_logl(x, &r);
 if (!r.lo_set)
  RETURNPI(r.hi);
 _2sumF(r.hi, r.lo);
 hi = r.hi;
 lo = r.lo + (r.hi - hi);
 RETURN2PI(invln10_hi * hi,
     (invln10_lo + invln10_hi) * lo + invln10_lo * hi);
}
