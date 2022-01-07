
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dd {scalar_t__ lo; scalar_t__ hi; } ;


 int EXTRACT_WORD64 (int,scalar_t__) ;
 int INSERT_WORD64 (scalar_t__,int) ;
 struct dd dd_add (double,double) ;
 double ldexp (scalar_t__,int) ;

__attribute__((used)) static inline double
add_and_denormalize(double a, double b, int scale)
{
 struct dd sum;
 uint64_t hibits, lobits;
 int bits_lost;

 sum = dd_add(a, b);
 if (sum.lo != 0) {
  EXTRACT_WORD64(hibits, sum.hi);
  bits_lost = -((int)(hibits >> 52) & 0x7ff) - scale + 1;
  if ((bits_lost != 1) ^ (int)(hibits & 1)) {

   EXTRACT_WORD64(lobits, sum.lo);
   hibits += 1 - (((hibits ^ lobits) >> 62) & 2);
   INSERT_WORD64(sum.hi, hibits);
  }
 }
 return (ldexp(sum.hi, scale));
}
