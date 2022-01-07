
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


 int ATAN_CONST ;
 int ATAN_LINEAR ;
 int BIAS ;
 int LDBL_MAX_EXP ;
 int LDBL_NBIT ;
 int MANH_SIZE ;
 long double T_even (long double) ;
 long double T_odd (long double) ;
 long double* atanhi ;
 long double* atanlo ;
 long double fabsl (long double) ;
 double huge ;
 double one ;

long double
atanl(long double x)
{
 union IEEEl2bits u;
 long double w,s1,s2,z;
 int id;
 int16_t expsign, expt;
 int32_t expman;

 u.e = x;
 expsign = u.xbits.expsign;
 expt = expsign & 0x7fff;
 if(expt >= ATAN_CONST) {
     if(expt == BIAS + LDBL_MAX_EXP &&
        ((u.bits.manh&~LDBL_NBIT)|u.bits.manl)!=0)
  return x+x;
     if(expsign>0) return atanhi[3]+atanlo[3];
     else return -atanhi[3]-atanlo[3];
 }


 expman = (expt << 8) | ((u.bits.manh >> (MANH_SIZE - 9)) & 0xff);
 if (expman < ((BIAS - 2) << 8) + 0xc0) {
     if (expt < ATAN_LINEAR) {
  if(huge+x>one) return x;
     }
     id = -1;
 } else {
 x = fabsl(x);
 if (expman < (BIAS << 8) + 0x30) {
     if (expman < ((BIAS - 1) << 8) + 0x60) {
  id = 0; x = (2.0*x-one)/(2.0+x);
     } else {
  id = 1; x = (x-one)/(x+one);
     }
 } else {
     if (expman < ((BIAS + 1) << 8) + 0x38) {
  id = 2; x = (x-1.5)/(one+1.5*x);
     } else {
  id = 3; x = -1.0/x;
     }
 }}

 z = x*x;
 w = z*z;

 s1 = z*T_even(w);
 s2 = w*T_odd(w);
 if (id<0) return x - x*(s1+s2);
 else {
     z = atanhi[id] - ((x*(s1+s2) - atanlo[id]) - x);
     return (expsign<0)? -z:z;
 }
}
