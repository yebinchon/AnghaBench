
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double atan (double) ;
 double fabs (double) ;
 double nan_mix (double,double) ;
 double pi ;
 double pi_lo ;
 double pi_o_2 ;
 double pi_o_4 ;
 double tiny ;
 double zero ;

double
__ieee754_atan2(double y, double x)
{
 double z;
 int32_t k,m,hx,hy,ix,iy;
 u_int32_t lx,ly;

 EXTRACT_WORDS(hx,lx,x);
 ix = hx&0x7fffffff;
 EXTRACT_WORDS(hy,ly,y);
 iy = hy&0x7fffffff;
 if(((ix|((lx|-lx)>>31))>0x7ff00000)||
    ((iy|((ly|-ly)>>31))>0x7ff00000))
     return nan_mix(x, y);
 if(hx==0x3ff00000&&lx==0) return atan(y);
 m = ((hy>>31)&1)|((hx>>30)&2);


 if((iy|ly)==0) {
     switch(m) {
  case 0:
  case 1: return y;
  case 2: return pi+tiny;
  case 3: return -pi-tiny;
     }
 }

 if((ix|lx)==0) return (hy<0)? -pi_o_2-tiny: pi_o_2+tiny;


 if(ix==0x7ff00000) {
     if(iy==0x7ff00000) {
  switch(m) {
      case 0: return pi_o_4+tiny;
      case 1: return -pi_o_4-tiny;
      case 2: return 3.0*pi_o_4+tiny;
      case 3: return -3.0*pi_o_4-tiny;
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

 if(iy==0x7ff00000) return (hy<0)? -pi_o_2-tiny: pi_o_2+tiny;


 k = (iy-ix)>>20;
 if(k > 60) {
     z=pi_o_2+0.5*pi_lo;
     m&=1;
 }
 else if(hx<0&&k<-60) z=0.0;
 else z=atan(fabs(y/x));
 switch (m) {
     case 0: return z ;
     case 1: return -z ;
     case 2: return pi-(z-pi_lo);
     default:
          return (z-pi_lo)-pi;
 }
}
