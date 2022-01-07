
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {scalar_t__ ah_chip_full_sleep; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY_SPECTRAL_SCAN ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int HAL_PM_AWAKE ;
 int HAL_PM_FULL_SLEEP ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar9300_set_power_mode (struct ath_hal*,int ,int ) ;

u_int32_t ar9300_get_spectral_config(struct ath_hal *ah)
{
    u_int32_t val;
    struct ath_hal_9300 *ahp = AH9300(ah);
    HAL_BOOL asleep = ahp->ah_chip_full_sleep;

    if ((AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)) && asleep) {
        ar9300_set_power_mode(ah, HAL_PM_AWAKE, AH_TRUE);
    }

    val = OS_REG_READ(ah, AR_PHY_SPECTRAL_SCAN);

    if ((AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)) && asleep) {
        ar9300_set_power_mode(ah, HAL_PM_FULL_SLEEP, AH_TRUE);
    }
    return val;
}
