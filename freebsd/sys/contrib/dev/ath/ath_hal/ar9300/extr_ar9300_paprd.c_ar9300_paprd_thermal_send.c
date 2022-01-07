
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 int AR_TFCNT ;
 int OS_REG_READ (struct ath_hal*,int ) ;

int ar9300_paprd_thermal_send(struct ath_hal *ah)
{
    if (AR_SREV_HORNET(ah)) {
        return OS_REG_READ(ah, AR_TFCNT);
    } else {
        return 1;
    }
}
