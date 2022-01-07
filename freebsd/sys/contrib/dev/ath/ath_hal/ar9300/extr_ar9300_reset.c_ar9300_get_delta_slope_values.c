
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int COEF_SCALE_S ;
 int HALASSERT (int) ;

__attribute__((used)) static inline void
ar9300_get_delta_slope_values(struct ath_hal *ah, u_int32_t coef_scaled,
    u_int32_t *coef_mantissa, u_int32_t *coef_exponent)
{
    u_int32_t coef_exp, coef_man;





    for (coef_exp = 31; coef_exp > 0; coef_exp--) {
        if ((coef_scaled >> coef_exp) & 0x1) {
            break;
        }
    }

    HALASSERT(coef_exp);
    coef_exp = 14 - (coef_exp - COEF_SCALE_S);






    coef_man = coef_scaled + (1 << (COEF_SCALE_S - coef_exp - 1));

    *coef_mantissa = coef_man >> (COEF_SCALE_S - coef_exp);
    *coef_exponent = coef_exp - 16;
}
