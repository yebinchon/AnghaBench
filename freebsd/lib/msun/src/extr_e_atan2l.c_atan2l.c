
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int manh; int manl; } ;
struct TYPE_3__ {int expsign; } ;
union IEEEl2bits {long double e; TYPE_2__ bits; TYPE_1__ xbits; } ;
typedef int int32_t ;
typedef int int16_t ;


 int BIAS ;
 int LDBL_MANT_DIG ;
 int LDBL_MAX_EXP ;
 int LDBL_NBIT ;
 long double atanl (long double) ;
 long double fabsl (long double) ;
 long double nan_mix (long double,long double) ;
 long double pi ;
 int pi_lo ;
 double pio2_hi ;
 double pio2_lo ;
 long double tiny ;
 long double zero ;

long double
atan2l(long double y, long double x)
{
 union IEEEl2bits ux, uy;
 long double z;
 int32_t k,m;
 int16_t exptx, expsignx, expty, expsigny;

 uy.e = y;
 expsigny = uy.xbits.expsign;
 expty = expsigny & 0x7fff;
 ux.e = x;
 expsignx = ux.xbits.expsign;
 exptx = expsignx & 0x7fff;

 if ((exptx==BIAS+LDBL_MAX_EXP &&
      ((ux.bits.manh&~LDBL_NBIT)|ux.bits.manl)!=0) ||
     (expty==BIAS+LDBL_MAX_EXP &&
      ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl)!=0))
     return nan_mix(x, y);
 if (expsignx==BIAS && ((ux.bits.manh&~LDBL_NBIT)|ux.bits.manl)==0)
     return atanl(y);
 m = ((expsigny>>15)&1)|((expsignx>>14)&2);


 if(expty==0 && ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl)==0) {
     switch(m) {
  case 0:
  case 1: return y;
  case 2: return pi+tiny;
  case 3: return -pi-tiny;
     }
 }

 if(exptx==0 && ((ux.bits.manh&~LDBL_NBIT)|ux.bits.manl)==0)
     return (expsigny<0)? -pio2_hi-tiny: pio2_hi+tiny;


 if(exptx==BIAS+LDBL_MAX_EXP) {
     if(expty==BIAS+LDBL_MAX_EXP) {
  switch(m) {
      case 0: return pio2_hi*0.5+tiny;
      case 1: return -pio2_hi*0.5-tiny;
      case 2: return 1.5*pio2_hi+tiny;
      case 3: return -1.5*pio2_hi-tiny;
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

 if(expty==BIAS+LDBL_MAX_EXP)
     return (expsigny<0)? -pio2_hi-tiny: pio2_hi+tiny;


 k = expty-exptx;
 if(k > LDBL_MANT_DIG+2) {
     z=pio2_hi+pio2_lo;
     m&=1;
 }
 else if(expsignx<0&&k<-LDBL_MANT_DIG-2) z=0.0;
 else z=atanl(fabsl(y/x));
 switch (m) {
     case 0: return z ;
     case 1: return -z ;
     case 2: return pi-(z-pi_lo);
     default:
          return (z-pi_lo)-pi;
 }
}
