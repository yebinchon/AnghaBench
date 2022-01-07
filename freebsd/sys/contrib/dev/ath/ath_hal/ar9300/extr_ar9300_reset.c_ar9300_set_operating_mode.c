
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_CFG ;
 int AR_CFG_AP_ADHOC_INDICATION ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ADHOC ;
 int AR_STA_ID1_KSRCH_MODE ;
 int AR_STA_ID1_STA_AP ;




 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_set_operating_mode(struct ath_hal *ah, int opmode)
{
    u_int32_t val;

    val = OS_REG_READ(ah, AR_STA_ID1);
    val &= ~(AR_STA_ID1_STA_AP | AR_STA_ID1_ADHOC);
    switch (opmode) {
    case 131:
        OS_REG_WRITE(ah, AR_STA_ID1,
            val | AR_STA_ID1_STA_AP | AR_STA_ID1_KSRCH_MODE);
        OS_REG_CLR_BIT(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
        break;
    case 130:
        OS_REG_WRITE(ah, AR_STA_ID1,
            val | AR_STA_ID1_ADHOC | AR_STA_ID1_KSRCH_MODE);
        OS_REG_SET_BIT(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
        break;
    case 128:
    case 129:
        OS_REG_WRITE(ah, AR_STA_ID1, val | AR_STA_ID1_KSRCH_MODE);
        break;
    }
}
