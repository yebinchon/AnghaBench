
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const curve448_scalar_t ;


 int sc_montmul (int const,int const,int const) ;
 int const sc_r2 ;

void curve448_scalar_mul(curve448_scalar_t out, const curve448_scalar_t a,
                         const curve448_scalar_t b)
{
    sc_montmul(out, a, b);
    sc_montmul(out, out, sc_r2);
}
