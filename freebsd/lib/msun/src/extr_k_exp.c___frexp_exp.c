
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;
 double exp (scalar_t__) ;
 int k ;
 scalar_t__ kln2 ;

__attribute__((used)) static double
__frexp_exp(double x, int *expt)
{
 double exp_x;
 uint32_t hx;







 exp_x = exp(x - kln2);
 GET_HIGH_WORD(hx, exp_x);
 *expt = (hx >> 20) - (0x3ff + 1023) + k;
 SET_HIGH_WORD(exp_x, (hx & 0xfffff) | ((0x3ff + 1023) << 20));
 return (exp_x);
}
