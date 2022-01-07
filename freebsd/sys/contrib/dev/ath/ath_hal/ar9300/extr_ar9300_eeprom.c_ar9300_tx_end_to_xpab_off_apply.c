
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_PHY_XPA_TIMING_CTL ;
 int AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF ;
 int AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF ;
 scalar_t__ AR_SREV_AR9580 (struct ath_hal*) ;
 scalar_t__ AR_SREV_OSPREY (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;
 int ar9300_tx_end_to_xpa_off_get (struct ath_hal*,int ) ;

__attribute__((used)) static HAL_BOOL ar9300_tx_end_to_xpab_off_apply(struct ath_hal *ah, u_int16_t channel)
{
    u_int32_t value;

    value = ar9300_tx_end_to_xpa_off_get(ah, channel);

    if (AR_SREV_OSPREY(ah) || AR_SREV_AR9580(ah) || AR_SREV_WASP(ah))
    {
        OS_REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
            AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF, value);
        OS_REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
            AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF, value);
    }
    return 0;
}
