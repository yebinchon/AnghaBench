
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 scalar_t__ FE_TONEAREST ;
 scalar_t__ FE_TOWARDZERO ;
 int SET_LOW_WORD (double,int) ;
 scalar_t__ fegetround () ;
 int fesetround (scalar_t__) ;

float
fmaf(float x, float y, float z)
{
 double xy, result;
 uint32_t hr, lr;

 xy = (double)x * y;
 result = xy + z;
 EXTRACT_WORDS(hr, lr, result);

 if ((lr & 0x1fffffff) != 0x10000000 ||
     (hr & 0x7ff00000) == 0x7ff00000 ||
     result - xy == z ||
     fegetround() != FE_TONEAREST)
  return (result);





 fesetround(FE_TOWARDZERO);
 volatile double vxy = xy;
 double adjusted_result = vxy + z;
 fesetround(FE_TONEAREST);
 if (result == adjusted_result)
  SET_LOW_WORD(adjusted_result, lr + 1);
 return (adjusted_result);
}
