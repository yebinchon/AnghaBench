
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_8__ {TYPE_3__* modal_header; } ;
struct TYPE_7__ {TYPE_2__ def; } ;
struct ath_hal_9300 {int ah_ini_addac; scalar_t__ ah_emu_eeprom; TYPE_1__ ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_11__ {scalar_t__ ah_macVersion; } ;
struct TYPE_10__ {int synth_center; } ;
struct TYPE_9__ {int xpa_bias_lvl; int* xpa_bias_lvl_freq; } ;
typedef TYPE_3__ MODAL_EEPDEF_HEADER ;
typedef TYPE_4__ CHAN_CENTERS ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_NULL ;
 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AR9300_EEP_MINOR_VER_7 ;
 scalar_t__ AR9300_EEP_VER ;
 scalar_t__ AR_SREV_VERSION_SOWL ;
 int FREQ2FBIN (int ,int) ;
 int HALASSERT (int) ;
 int HALDEBUG (int ,int ,char*) ;
 int HAL_DEBUG_UNMASKABLE ;
 int IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 int INI_RA (int *,int,int) ;
 int ar9300_get_channel_centers (struct ath_hal*,struct ieee80211_channel*,TYPE_4__*) ;
 scalar_t__ owl_get_eepdef_rev (struct ath_hal_9300*) ;
 scalar_t__ owl_get_eepdef_ver (struct ath_hal_9300*) ;

void
ar9300_eeprom_set_addac(struct ath_hal *ah, struct ieee80211_channel *chan)
{

    HALDEBUG(AH_NULL, HAL_DEBUG_UNMASKABLE,
                 "FIXME: ar9300_eeprom_def_set_addac called\n");
}
