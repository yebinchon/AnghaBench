
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float one ;
 float* pR2 ;
 float* pR3 ;
 float* pR5 ;
 float* pR8 ;
 float* pS2 ;
 float* pS3 ;
 float* pS5 ;
 float* pS8 ;

__attribute__((used)) static __inline float
pzerof(float x)
{
 const float *p,*q;
 float z,r,s;
 int32_t ix;
 GET_FLOAT_WORD(ix,x);
 ix &= 0x7fffffff;
 if(ix>=0x41000000) {p = pR8; q= pS8;}
 else if(ix>=0x409173eb){p = pR5; q= pS5;}
 else if(ix>=0x4036d917){p = pR3; q= pS3;}
 else {p = pR2; q= pS2;}
 z = one/(x*x);
 r = p[0]+z*(p[1]+z*(p[2]+z*(p[3]+z*(p[4]+z*p[5]))));
 s = one+z*(q[0]+z*(q[1]+z*(q[2]+z*(q[3]+z*q[4]))));
 return one+ r/s;
}
