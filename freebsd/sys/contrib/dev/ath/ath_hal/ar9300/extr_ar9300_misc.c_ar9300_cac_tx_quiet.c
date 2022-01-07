
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_cac_quiet_enabled; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int AR_MAC_PCU_OFFSET (int ) ;
 int AR_PCU_FORCE_QUIET_COLL ;
 int AR_QUIET1_QUIET_ACK_CTS_ENABLE ;
 int MAC_PCU_MISC_MODE ;
 int MAC_PCU_QUIET_TIME_1 ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_cac_tx_quiet(struct ath_hal *ah, HAL_BOOL enable)
{
    uint32_t reg1, reg2;

    reg1 = OS_REG_READ(ah, AR_MAC_PCU_OFFSET(MAC_PCU_MISC_MODE));
    reg2 = OS_REG_READ(ah, AR_MAC_PCU_OFFSET(MAC_PCU_QUIET_TIME_1));
    AH9300(ah)->ah_cac_quiet_enabled = enable;

    if (enable) {
        OS_REG_WRITE(ah, AR_MAC_PCU_OFFSET(MAC_PCU_MISC_MODE),
                     reg1 | AR_PCU_FORCE_QUIET_COLL);
        OS_REG_WRITE(ah, AR_MAC_PCU_OFFSET(MAC_PCU_QUIET_TIME_1),
                     reg2 & ~AR_QUIET1_QUIET_ACK_CTS_ENABLE);
    } else {
        OS_REG_WRITE(ah, AR_MAC_PCU_OFFSET(MAC_PCU_MISC_MODE),
                     reg1 & ~AR_PCU_FORCE_QUIET_COLL);
        OS_REG_WRITE(ah, AR_MAC_PCU_OFFSET(MAC_PCU_QUIET_TIME_1),
                     reg2 | AR_QUIET1_QUIET_ACK_CTS_ENABLE);
    }
}
