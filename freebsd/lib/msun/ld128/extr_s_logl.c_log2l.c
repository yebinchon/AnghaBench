
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
 float invln2_hi ;
 float invln2_lo ;
 int k_logl (long double,struct ld*) ;

long double
log2l(long double x)
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
 RETURN2PI(invln2_hi * hi,
     (invln2_lo + invln2_hi) * lo + invln2_lo * hi);
}
