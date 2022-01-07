
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int misc_configuration; } ;
struct TYPE_5__ {TYPE_1__ base_eep_header; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_2__ ah_eeprom; } ;
typedef int HAL_BOOL ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int AR_PHY_AGC ;
 int AR_PHY_AGC_QUICK_DROP ;
 scalar_t__ AR_SREV_AR9580 (struct ath_hal*) ;
 scalar_t__ AR_SREV_OSPREY (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;
 int ar9300_quick_drop_get (struct ath_hal*,int ,int ) ;

__attribute__((used)) static HAL_BOOL ar9300_quick_drop_apply(struct ath_hal *ah, u_int16_t channel)
{
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    u_int32_t value;



    if (eep->base_eep_header.misc_configuration & 0x10)
 {
        if (AR_SREV_OSPREY(ah) || AR_SREV_AR9580(ah) || AR_SREV_WASP(ah))
        {
            value = ar9300_quick_drop_get(ah, 0, channel);
            OS_REG_RMW_FIELD(ah, AR_PHY_AGC, AR_PHY_AGC_QUICK_DROP, value);
        }
    }
    return 0;
}
