
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int FP_ILOGB0 ;
 int FP_ILOGBNAN ;
 int GET_FLOAT_WORD (int,float) ;
 int INT_MAX ;

int ilogbf(float x)
{
 int32_t hx,ix;

 GET_FLOAT_WORD(hx,x);
 hx &= 0x7fffffff;
 if(hx<0x00800000) {
     if(hx==0)
  return FP_ILOGB0;
     else
         for (ix = -126,hx<<=8; hx>0; hx<<=1) ix -=1;
     return ix;
 }
 else if (hx<0x7f800000) return (hx>>23)-127;
 else if (hx>0x7f800000) return FP_ILOGBNAN;
 else return INT_MAX;
}
