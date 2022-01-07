
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int __ieee754_rem_pio2 (double,double*) ;
 double __kernel_cos (double,double) ;
 double __kernel_sin (double,double,int) ;

double
sin(double x)
{
 double y[2],z=0.0;
 int32_t n, ix;


 GET_HIGH_WORD(ix,x);


 ix &= 0x7fffffff;
 if(ix <= 0x3fe921fb) {
     if(ix<0x3e500000)
        {if((int)x==0) return x;}
     return __kernel_sin(x,z,0);
 }


 else if (ix>=0x7ff00000) return x-x;


 else {
     n = __ieee754_rem_pio2(x,y);
     switch(n&3) {
  case 0: return __kernel_sin(y[0],y[1],1);
  case 1: return __kernel_cos(y[0],y[1]);
  case 2: return -__kernel_sin(y[0],y[1],1);
  default:
   return -__kernel_cos(y[0],y[1]);
     }
 }
}
