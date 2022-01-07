
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manh; int manl; int sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int LDBL_NBIT ;
 int mask_nbit_l (union IEEEl2bits) ;

long double
nextafterl(long double x, long double y)
{
 volatile long double t;
 union IEEEl2bits ux, uy;

 ux.e = x;
 uy.e = y;

 if ((ux.bits.exp == 0x7fff &&
      ((ux.bits.manh&~LDBL_NBIT)|ux.bits.manl) != 0) ||
     (uy.bits.exp == 0x7fff &&
      ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl) != 0))
    return x+y;
 if(x==y) return y;
 if(x==0.0) {
     ux.bits.manh = 0;
     ux.bits.manl = 1;
     ux.bits.sign = uy.bits.sign;
     t = ux.e*ux.e;
     if(t==ux.e) return t; else return ux.e;
 }
 if(x>0.0 ^ x<y) {
     if(ux.bits.manl==0) {
  if ((ux.bits.manh&~LDBL_NBIT)==0)
      ux.bits.exp -= 1;
  ux.bits.manh = (ux.bits.manh - 1) | (ux.bits.manh & LDBL_NBIT);
     }
     ux.bits.manl -= 1;
 } else {
     ux.bits.manl += 1;
     if(ux.bits.manl==0) {
  ux.bits.manh = (ux.bits.manh + 1) | (ux.bits.manh & LDBL_NBIT);
  if ((ux.bits.manh&~LDBL_NBIT)==0)
      ux.bits.exp += 1;
     }
 }
 if(ux.bits.exp==0x7fff) return x+x;
 if(ux.bits.exp==0) {
     mask_nbit_l(ux);
     t = ux.e * ux.e;
     if(t!=ux.e)
  return ux.e;
 }
 return ux.e;
}
