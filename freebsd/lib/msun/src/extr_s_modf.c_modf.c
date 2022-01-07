
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int INSERT_WORDS (double,int,int) ;
 double one ;

double
modf(double x, double *iptr)
{
 int32_t i0,i1,j0;
 u_int32_t i;
 EXTRACT_WORDS(i0,i1,x);
 j0 = ((i0>>20)&0x7ff)-0x3ff;
 if(j0<20) {
     if(j0<0) {
         INSERT_WORDS(*iptr,i0&0x80000000,0);
  return x;
     } else {
  i = (0x000fffff)>>j0;
  if(((i0&i)|i1)==0) {
      u_int32_t high;
      *iptr = x;
      GET_HIGH_WORD(high,x);
      INSERT_WORDS(x,high&0x80000000,0);
      return x;
  } else {
      INSERT_WORDS(*iptr,i0&(~i),0);
      return x - *iptr;
  }
     }
 } else if (j0>51) {
     u_int32_t high;
     if (j0 == 0x400) {
  *iptr = x;
  return 0.0 / x;
     }
     *iptr = x*one;
     GET_HIGH_WORD(high,x);
     INSERT_WORDS(x,high&0x80000000,0);
     return x;
 } else {
     i = ((u_int32_t)(0xffffffff))>>(j0-20);
     if((i1&i)==0) {
         u_int32_t high;
  *iptr = x;
  GET_HIGH_WORD(high,x);
  INSERT_WORDS(x,high&0x80000000,0);
  return x;
     } else {
         INSERT_WORDS(*iptr,i0,i1&(~i));
  return x - *iptr;
     }
 }
}
