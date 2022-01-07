
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halIsrRacSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;


 scalar_t__ AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_ADHOC_MCAST_KEYID_ENABLE ;
 int AR_AGG_WEP_ENABLE ;
 int AR_BUG_58603_FIX_ENABLE ;
 int AR_CFG ;
 int AR_CFG_MISSING_TX_INTR_FIX_ENABLE ;
 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_PCU_MISC_MODE2 ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar9300_hwgreentx_set_pal_spare (struct ath_hal*,int) ;

__attribute__((used)) static inline void
ar9300_override_ini(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t val;
    HAL_CAPABILITIES *p_cap = &AH_PRIVATE(ah)->ah_caps;






    OS_REG_SET_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));







    val = OS_REG_READ(ah, AR_PCU_MISC_MODE2) & (~AR_ADHOC_MCAST_KEYID_ENABLE);
    OS_REG_WRITE(ah, AR_PCU_MISC_MODE2,
        val | AR_BUG_58603_FIX_ENABLE | AR_AGG_WEP_ENABLE);







    if (p_cap->halIsrRacSupport == AH_FALSE) {
        OS_REG_CLR_BIT(ah, AR_CFG, AR_CFG_MISSING_TX_INTR_FIX_ENABLE);
    }


    ar9300_hwgreentx_set_pal_spare(ah, 1);
}
