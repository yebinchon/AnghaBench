
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSERT_WORDS (double,int,int ) ;
 double __frexp_exp (double,int*) ;

double
__ldexp_exp(double x, int expt)
{
 double exp_x, scale;
 int ex_expt;

 exp_x = __frexp_exp(x, &ex_expt);
 expt += ex_expt;
 INSERT_WORDS(scale, (0x3ff + expt) << 20, 0);
 return (exp_x * scale);
}
