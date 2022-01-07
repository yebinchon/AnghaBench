
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float two25 ;

float
frexpf(float x, int *eptr)
{
 int32_t hx,ix;
 GET_FLOAT_WORD(hx,x);
 ix = 0x7fffffff&hx;
 *eptr = 0;
 if(ix>=0x7f800000||(ix==0)) return x;
 if (ix<0x00800000) {
     x *= two25;
     GET_FLOAT_WORD(hx,x);
     ix = hx&0x7fffffff;
     *eptr = -25;
 }
 *eptr += (ix>>23)-126;
 hx = (hx&0x807fffff)|0x3f000000;
 SET_FLOAT_WORD(x,hx);
 return x;
}
