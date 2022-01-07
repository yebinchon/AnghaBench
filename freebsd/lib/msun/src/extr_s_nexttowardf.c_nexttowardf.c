
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exp; int manh; int manl; int sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 scalar_t__ LDBL_INFNAN_EXP ;
 int LDBL_NBIT ;
 int SET_FLOAT_WORD (float,int) ;

float
nexttowardf(float x, long double y)
{
 union IEEEl2bits uy;
 volatile float t;
 int32_t hx,ix;

 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 uy.e = y;

 if((ix>0x7f800000) ||
    (uy.bits.exp == LDBL_INFNAN_EXP &&
     ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl) != 0))
    return x+y;
 if(x==y) return (float)y;
 if(ix==0) {
     SET_FLOAT_WORD(x,(uy.bits.sign<<31)|1);
     t = x*x;
     if(t==x) return t; else return x;
 }
 if(hx>=0 ^ x < y)
     hx -= 1;
 else
     hx += 1;
 ix = hx&0x7f800000;
 if(ix>=0x7f800000) return x+x;
 if(ix<0x00800000) {
     t = x*x;
     if(t!=x) {
         SET_FLOAT_WORD(x,hx);
  return x;
     }
 }
 SET_FLOAT_WORD(x,hx);
 return x;
}
