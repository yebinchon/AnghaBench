
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_INT_MITIGATION ;


 int AR_MIRT ;
 int AR_RIMT ;
 int AR_TIMT ;





 int OS_REG_READ (struct ath_hal*,int ) ;

u_int32_t
ar9300_get_intr_mitigation_timer(struct ath_hal* ah, HAL_INT_MITIGATION reg)
{
    u_int32_t val = 0;
    return val;
}
