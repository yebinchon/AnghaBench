
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float Lg1 ;
 float Lg2 ;
 float Lg3 ;
 float Lg4 ;

__attribute__((used)) static inline float
k_log1pf(float f)
{
 float hfsq,s,z,R,w,t1,t2;

  s = f/((float)2.0+f);
 z = s*s;
 w = z*z;
 t1= w*(Lg2+w*Lg4);
 t2= z*(Lg1+w*Lg3);
 R = t2+t1;
 hfsq=(float)0.5*f*f;
 return s*(hfsq+R);
}
