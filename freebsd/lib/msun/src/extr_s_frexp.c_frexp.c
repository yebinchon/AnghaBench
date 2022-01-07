
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;
 double two54 ;

double
frexp(double x, int *eptr)
{
 int32_t hx, ix, lx;
 EXTRACT_WORDS(hx,lx,x);
 ix = 0x7fffffff&hx;
 *eptr = 0;
 if(ix>=0x7ff00000||((ix|lx)==0)) return x;
 if (ix<0x00100000) {
     x *= two54;
     GET_HIGH_WORD(hx,x);
     ix = hx&0x7fffffff;
     *eptr = -54;
 }
 *eptr += (ix>>20)-1022;
 hx = (hx&0x800fffff)|0x3fe00000;
 SET_HIGH_WORD(x,hx);
 return x;
}
