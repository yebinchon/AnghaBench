
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 double fabs (double) ;
 double two54 ;

double
logb(double x)
{
 int32_t lx,ix;
 EXTRACT_WORDS(ix,lx,x);
 ix &= 0x7fffffff;
 if((ix|lx)==0) return -1.0/fabs(x);
 if(ix>=0x7ff00000) return x*x;
 if(ix<0x00100000) {
  x *= two54;
  GET_HIGH_WORD(ix,x);
  ix &= 0x7fffffff;
  return (double) ((ix>>20)-1023-54);
 } else
  return (double) ((ix>>20)-1023);
}
