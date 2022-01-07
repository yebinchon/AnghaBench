
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float expf (scalar_t__) ;
 int k ;
 scalar_t__ kln2 ;

__attribute__((used)) static float
__frexp_expf(float x, int *expt)
{
 float exp_x;
 uint32_t hx;

 exp_x = expf(x - kln2);
 GET_FLOAT_WORD(hx, exp_x);
 *expt = (hx >> 23) - (0x7f + 127) + k;
 SET_FLOAT_WORD(exp_x, (hx & 0x7fffff) | ((0x7f + 127) << 23));
 return (exp_x);
}
