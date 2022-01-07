
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dd {scalar_t__ lo; double hi; } ;


 int EXTRACT_WORD64 (int,double) ;
 int INSERT_WORD64 (double,int) ;
 struct dd dd_add (double,double) ;

__attribute__((used)) static inline double
add_adjusted(double a, double b)
{
 struct dd sum;
 uint64_t hibits, lobits;

 sum = dd_add(a, b);
 if (sum.lo != 0) {
  EXTRACT_WORD64(hibits, sum.hi);
  if ((hibits & 1) == 0) {

   EXTRACT_WORD64(lobits, sum.lo);
   hibits += 1 - ((hibits ^ lobits) >> 62);
   INSERT_WORD64(sum.hi, hibits);
  }
 }
 return (sum.hi);
}
