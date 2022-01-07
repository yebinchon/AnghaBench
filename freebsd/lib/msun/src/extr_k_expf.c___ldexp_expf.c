
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SET_FLOAT_WORD (float,int) ;
 float __frexp_expf (float,int*) ;

float
__ldexp_expf(float x, int expt)
{
 float exp_x, scale;
 int ex_expt;

 exp_x = __frexp_expf(x, &ex_expt);
 expt += ex_expt;
 SET_FLOAT_WORD(scale, (0x7f + expt) << 23);
 return (exp_x * scale);
}
