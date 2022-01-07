
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int B1 ;
 int B2 ;
 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;

float
cbrtf(float x)
{
 double r,T;
 float t;
 int32_t hx;
 u_int32_t sign;
 u_int32_t high;

 GET_FLOAT_WORD(hx,x);
 sign=hx&0x80000000;
 hx ^=sign;
 if(hx>=0x7f800000) return(x+x);


 if(hx<0x00800000) {
     if(hx==0)
  return(x);
     SET_FLOAT_WORD(t,0x4b800000);
     t*=x;
     GET_FLOAT_WORD(high,t);
     SET_FLOAT_WORD(t,sign|((high&0x7fffffff)/3+B2));
 } else
     SET_FLOAT_WORD(t,sign|(hx/3+B1));






 T=t;
 r=T*T*T;
 T=T*((double)x+x+r)/(x+r+r);





 r=T*T*T;
 T=T*((double)x+x+r)/(x+r+r);


 return(T);
}
