
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_MIBC ;
 int AR_MIBC_CMC ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_clear_mib_counters(struct ath_hal *ah)
{
    u_int32_t reg_val;

    reg_val = OS_REG_READ(ah, AR_MIBC);
    OS_REG_WRITE(ah, AR_MIBC, reg_val | AR_MIBC_CMC);
    OS_REG_WRITE(ah, AR_MIBC, reg_val & ~AR_MIBC_CMC);
}
