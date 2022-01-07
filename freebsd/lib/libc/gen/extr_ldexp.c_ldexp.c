
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;
 double _copysign (double,double) ;
 double huge ;
 double tiny ;
 double two54 ;
 double twom54 ;

double
ldexp(double x, int n)
{
 int32_t k,hx,lx;
 EXTRACT_WORDS(hx,lx,x);
        k = (hx&0x7ff00000)>>20;
        if (k==0) {
            if ((lx|(hx&0x7fffffff))==0) return x;
     x *= two54;
     GET_HIGH_WORD(hx,x);
     k = ((hx&0x7ff00000)>>20) - 54;
            if (n< -50000) return tiny*x;
     }
        if (k==0x7ff) return x+x;
        k = k+n;
        if (k > 0x7fe) return huge*_copysign(huge,x);
        if (k > 0)
     {SET_HIGH_WORD(x,(hx&0x800fffff)|(k<<20)); return x;}
        if (k <= -54) {
            if (n > 50000)
  return huge*_copysign(huge,x);
     else return tiny*_copysign(tiny,x);
 }
        k += 54;
 SET_HIGH_WORD(x,(hx&0x800fffff)|(k<<20));
        return x*twom54;
}
