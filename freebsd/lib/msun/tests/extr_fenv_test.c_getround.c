
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DBL_EPSILON ;
 int FE_DOWNWARD ;
 int FE_TONEAREST ;
 int FE_TOWARDZERO ;
 int FE_UPWARD ;
 double copysign (double,double volatile) ;

__attribute__((used)) static int
getround(void)
{
 volatile double d;





 d = 1.0;
 d -= 1.0;
 if (copysign(1.0, d) < 0.0)
  return (FE_DOWNWARD);

 d = 1.0;
 if (d + (DBL_EPSILON * 3.0 / 4.0) == 1.0)
  return (FE_TOWARDZERO);
 if (d + (DBL_EPSILON * 1.0 / 4.0) > 1.0)
  return (FE_UPWARD);

 return (FE_TONEAREST);
}
