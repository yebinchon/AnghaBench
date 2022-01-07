
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float atanf (float) ;
 float fabsf (float) ;
 float nan_mix (float,float) ;
 float pi ;
 float pi_lo ;
 float pi_o_2 ;
 float pi_o_4 ;
 float tiny ;
 float zero ;

float
__ieee754_atan2f(float y, float x)
{
 float z;
 int32_t k,m,hx,hy,ix,iy;

 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 GET_FLOAT_WORD(hy,y);
 iy = hy&0x7fffffff;
 if((ix>0x7f800000)||
    (iy>0x7f800000))
     return nan_mix(x, y);
 if(hx==0x3f800000) return atanf(y);
 m = ((hy>>31)&1)|((hx>>30)&2);


 if(iy==0) {
     switch(m) {
  case 0:
  case 1: return y;
  case 2: return pi+tiny;
  case 3: return -pi-tiny;
     }
 }

 if(ix==0) return (hy<0)? -pi_o_2-tiny: pi_o_2+tiny;


 if(ix==0x7f800000) {
     if(iy==0x7f800000) {
  switch(m) {
      case 0: return pi_o_4+tiny;
      case 1: return -pi_o_4-tiny;
      case 2: return (float)3.0*pi_o_4+tiny;
      case 3: return (float)-3.0*pi_o_4-tiny;
  }
     } else {
  switch(m) {
      case 0: return zero ;
      case 1: return -zero ;
      case 2: return pi+tiny ;
      case 3: return -pi-tiny ;
  }
     }
 }

 if(iy==0x7f800000) return (hy<0)? -pi_o_2-tiny: pi_o_2+tiny;


 k = (iy-ix)>>23;
 if(k > 26) {
     z=pi_o_2+(float)0.5*pi_lo;
     m&=1;
 }
 else if(k<-26&&hx<0) z=0.0;
 else z=atanf(fabsf(y/x));
 switch (m) {
     case 0: return z ;
     case 1: return -z ;
     case 2: return pi-(z-pi_lo);
     default:
          return (z-pi_lo)-pi;
 }
}
