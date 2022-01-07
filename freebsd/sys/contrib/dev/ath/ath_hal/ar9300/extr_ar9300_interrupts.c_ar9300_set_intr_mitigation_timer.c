
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_INT_MITIGATION ;


 int AR_MIRT ;
 int AR_RIMT ;
 int AR_RIMT_FIRST ;
 int AR_RIMT_LAST ;
 int AR_TIMT ;
 int AR_TIMT_FIRST ;
 int AR_TIMT_LAST ;





 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_set_intr_mitigation_timer(
    struct ath_hal* ah,
    HAL_INT_MITIGATION reg,
    u_int32_t value)
{
}
