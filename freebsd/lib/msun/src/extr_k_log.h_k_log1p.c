
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double Lg1 ;
 double Lg2 ;
 double Lg3 ;
 double Lg4 ;
 double Lg5 ;
 double Lg6 ;
 double Lg7 ;

__attribute__((used)) static inline double
k_log1p(double f)
{
 double hfsq,s,z,R,w,t1,t2;

  s = f/(2.0+f);
 z = s*s;
 w = z*z;
 t1= w*(Lg2+w*(Lg4+w*Lg6));
 t2= z*(Lg1+w*(Lg3+w*(Lg5+w*Lg7)));
 R = t2+t1;
 hfsq=0.5*f*f;
 return s*(hfsq+R);
}
