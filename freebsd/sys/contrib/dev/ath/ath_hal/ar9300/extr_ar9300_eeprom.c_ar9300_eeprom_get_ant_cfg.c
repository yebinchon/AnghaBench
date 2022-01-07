
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_8__ {int version; } ;
struct TYPE_6__ {TYPE_4__ base_eep_header; TYPE_3__* modal_header; } ;
struct TYPE_5__ {TYPE_2__ def; } ;
struct ath_hal_9300 {TYPE_1__ ah_eeprom; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_7__ {int ant_ctrl_common; int use_ant1; } ;
typedef TYPE_3__ MODAL_EEPDEF_HEADER ;
typedef int HAL_STATUS ;
typedef TYPE_4__ BASE_EEPDEF_HEADER ;


 int HAL_EINVAL ;
 int HAL_OK ;
 size_t IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;

HAL_STATUS
ar9300_eeprom_get_ant_cfg(struct ath_hal_9300 *ahp,
  const struct ieee80211_channel *chan,
  u_int8_t index, u_int16_t *config)
{
    return HAL_EINVAL;
}
