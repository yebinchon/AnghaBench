
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manh; int manl; int sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int INSERT_WORDS (double,int,int) ;
 int LDBL_NBIT ;

double
nexttoward(double x, long double y)
{
 union IEEEl2bits uy;
 volatile double t;
 int32_t hx,ix;
 u_int32_t lx;

 EXTRACT_WORDS(hx,lx,x);
 ix = hx&0x7fffffff;
 uy.e = y;

 if(((ix>=0x7ff00000)&&((ix-0x7ff00000)|lx)!=0) ||
     (uy.bits.exp == 0x7fff &&
      ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl) != 0))
    return x+y;
 if(x==y) return (double)y;
 if(x==0.0) {
     INSERT_WORDS(x,uy.bits.sign<<31,1);
     t = x*x;
     if(t==x) return t; else return x;
 }
 if(hx>0.0 ^ x < y) {
     if(lx==0) hx -= 1;
     lx -= 1;
 } else {
     lx += 1;
     if(lx==0) hx += 1;
 }
 ix = hx&0x7ff00000;
 if(ix>=0x7ff00000) return x+x;
 if(ix<0x00100000) {
     t = x*x;
     if(t!=x) {
         INSERT_WORDS(x,hx,lx);
  return x;
     }
 }
 INSERT_WORDS(x,hx,lx);
 return x;
}
