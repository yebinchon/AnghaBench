
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float Lg1 ;
 float Lg2 ;
 float Lg3 ;
 float Lg4 ;
 int SET_FLOAT_WORD (float,int) ;
 float ln2_hi ;
 float ln2_lo ;
 float two25 ;
 float vzero ;
 float zero ;

float
__ieee754_logf(float x)
{
 float hfsq,f,s,z,R,w,t1,t2,dk;
 int32_t k,ix,i,j;

 GET_FLOAT_WORD(ix,x);

 k=0;
 if (ix < 0x00800000) {
     if ((ix&0x7fffffff)==0)
  return -two25/vzero;
     if (ix<0) return (x-x)/zero;
     k -= 25; x *= two25;
     GET_FLOAT_WORD(ix,x);
 }
 if (ix >= 0x7f800000) return x+x;
 k += (ix>>23)-127;
 ix &= 0x007fffff;
 i = (ix+(0x95f64<<3))&0x800000;
 SET_FLOAT_WORD(x,ix|(i^0x3f800000));
 k += (i>>23);
 f = x-(float)1.0;
 if((0x007fffff&(0x8000+ix))<0xc000) {
     if(f==zero) {
  if(k==0) {
      return zero;
  } else {
      dk=(float)k;
      return dk*ln2_hi+dk*ln2_lo;
  }
     }
     R = f*f*((float)0.5-(float)0.33333333333333333*f);
     if(k==0) return f-R; else {dk=(float)k;
           return dk*ln2_hi-((R-dk*ln2_lo)-f);}
 }
  s = f/((float)2.0+f);
 dk = (float)k;
 z = s*s;
 i = ix-(0x6147a<<3);
 w = z*z;
 j = (0x6b851<<3)-ix;
 t1= w*(Lg2+w*Lg4);
 t2= z*(Lg1+w*Lg3);
 i |= j;
 R = t2+t1;
 if(i>0) {
     hfsq=(float)0.5*f*f;
     if(k==0) return f-(hfsq-s*(hfsq+R)); else
       return dk*ln2_hi-((hfsq-(s*(hfsq+R)+dk*ln2_lo))-f);
 } else {
     if(k==0) return f-s*(f-R); else
       return dk*ln2_hi-((s*(f-R)-dk*ln2_lo)-f);
 }
}
