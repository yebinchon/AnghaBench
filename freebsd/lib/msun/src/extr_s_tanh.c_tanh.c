
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 double expm1 (double) ;
 double fabs (double) ;
 double huge ;
 double one ;
 double tiny ;
 double two ;

double
tanh(double x)
{
 double t,z;
 int32_t jx,ix;

 GET_HIGH_WORD(jx,x);
 ix = jx&0x7fffffff;


 if(ix>=0x7ff00000) {
     if (jx>=0) return one/x+one;
     else return one/x-one;
 }


 if (ix < 0x40360000) {
     if (ix<0x3e300000) {
  if(huge+x>one) return x;
     }
     if (ix>=0x3ff00000) {
  t = expm1(two*fabs(x));
  z = one - two/(t+two);
     } else {
         t = expm1(-two*fabs(x));
         z= -t/(t+two);
     }

 } else {
     z = one - tiny;
 }
 return (jx>=0)? z: -z;
}
