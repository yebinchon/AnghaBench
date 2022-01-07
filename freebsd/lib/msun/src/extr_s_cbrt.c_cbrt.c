
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int32_t ;
typedef int int32_t ;


 int B1 ;
 int B2 ;
 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int INSERT_WORDS (double,int,int ) ;
 double P0 ;
 double P1 ;
 double P2 ;
 double P3 ;
 double P4 ;
 int SET_HIGH_WORD (double,int) ;

double
cbrt(double x)
{
 int32_t hx;
 union {
     double value;
     uint64_t bits;
 } u;
 double r,s,t=0.0,w;
 u_int32_t sign;
 u_int32_t high,low;

 EXTRACT_WORDS(hx,low,x);
 sign=hx&0x80000000;
 hx ^=sign;
 if(hx>=0x7ff00000) return(x+x);
 if(hx<0x00100000) {
     if((hx|low)==0)
  return(x);
     SET_HIGH_WORD(t,0x43500000);
     t*=x;
     GET_HIGH_WORD(high,t);
     INSERT_WORDS(t,sign|((high&0x7fffffff)/3+B2),0);
 } else
     INSERT_WORDS(t,sign|(hx/3+B1),0);
 r=(t*t)*(t/x);
 t=t*((P0+r*(P1+r*P2))+((r*r)*r)*(P3+r*P4));
 u.value=t;
 u.bits=(u.bits+0x80000000)&0xffffffffc0000000ULL;
 t=u.value;


 s=t*t;
 r=x/s;
 w=t+t;
 r=(r-t)/(w+r);
 t=t+t*r;

 return(t);
}
