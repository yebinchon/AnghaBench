
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float copysignf (float,float) ;
 float huge ;
 float tiny ;
 float two25 ;
 float twom25 ;

float
scalbnf (float x, int n)
{
 int32_t k,ix;
 GET_FLOAT_WORD(ix,x);
        k = (ix&0x7f800000)>>23;
        if (k==0) {
            if ((ix&0x7fffffff)==0) return x;
     x *= two25;
     GET_FLOAT_WORD(ix,x);
     k = ((ix&0x7f800000)>>23) - 25;
            if (n< -50000) return tiny*x;
     }
        if (k==0xff) return x+x;
        k = k+n;
        if (k > 0xfe) return huge*copysignf(huge,x);
        if (k > 0)
     {SET_FLOAT_WORD(x,(ix&0x807fffff)|(k<<23)); return x;}
        if (k <= -25) {
            if (n > 50000)
  return huge*copysignf(huge,x);
     else
  return tiny*copysignf(tiny,x);
 }
        k += 25;
 SET_FLOAT_WORD(x,(ix&0x807fffff)|(k<<23));
        return x*twom25;
}
