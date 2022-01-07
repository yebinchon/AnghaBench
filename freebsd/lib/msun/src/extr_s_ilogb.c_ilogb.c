
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int FP_ILOGB0 ;
 int FP_ILOGBNAN ;
 int INT_MAX ;

int ilogb(double x)
{
 int32_t hx,lx,ix;

 EXTRACT_WORDS(hx,lx,x);
 hx &= 0x7fffffff;
 if(hx<0x00100000) {
     if((hx|lx)==0)
  return FP_ILOGB0;
     else
  if(hx==0) {
      for (ix = -1043; lx>0; lx<<=1) ix -=1;
  } else {
      for (ix = -1022,hx<<=11; hx>0; hx<<=1) ix -=1;
  }
     return ix;
 }
 else if (hx<0x7ff00000) return (hx>>20)-1023;
 else if (hx>0x7ff00000 || lx!=0) return FP_ILOGBNAN;
 else return INT_MAX;
}
