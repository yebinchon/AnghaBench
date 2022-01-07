
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef void* u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_private {struct ieee80211_channel* ah_curchan; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {void* ant_ctrl_common2; void* ant_ctrl_common; } ;
struct TYPE_5__ {void* ant_ctrl_common2; void* ant_ctrl_common; } ;
struct TYPE_7__ {TYPE_2__ modal_header_5g; TYPE_1__ modal_header_2g; } ;
typedef TYPE_3__ ar9300_eeprom_t ;
struct TYPE_8__ {TYPE_3__ ah_eeprom; } ;
typedef int HAL_BOOL ;


 TYPE_4__* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY_SWITCH_COM ;
 int AR_PHY_SWITCH_COM_2 ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 int AR_SWITCH_TABLE_COM2_ALL ;
 int AR_SWITCH_TABLE_COM_ALL ;
 int IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 void* OS_REG_READ_FIELD (struct ath_hal*,int ,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,void*) ;

HAL_BOOL ar9300_ant_swcom_sel(struct ath_hal *ah, u_int8_t ops,
                        u_int32_t *common_tbl1, u_int32_t *common_tbl2)
{
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    struct ath_hal_private *ap = AH_PRIVATE(ah);
    const struct ieee80211_channel *curchan = ap->ah_curchan;
    enum {
        ANT_SELECT_OPS_GET,
        ANT_SELECT_OPS_SET,
    };

    if (AR_SREV_JUPITER(ah) || AR_SREV_SCORPION(ah))
        return AH_FALSE;

    if (!curchan)
        return AH_FALSE;





    switch (ops) {
    case ANT_SELECT_OPS_GET:
        *common_tbl1 = OS_REG_READ_FIELD(ah, AR_PHY_SWITCH_COM,
                            (0xffff));
        *common_tbl2 = OS_REG_READ_FIELD(ah, AR_PHY_SWITCH_COM_2,
                            (0xffffff));
        break;
    case ANT_SELECT_OPS_SET:
        OS_REG_RMW_FIELD(ah, AR_PHY_SWITCH_COM,
            (0xffff), *common_tbl1);
        OS_REG_RMW_FIELD(ah, AR_PHY_SWITCH_COM_2,
            (0xffffff), *common_tbl2);


        if (IEEE80211_IS_CHAN_2GHZ(curchan)) {
            eep->modal_header_2g.ant_ctrl_common = *common_tbl1;
            eep->modal_header_2g.ant_ctrl_common2 = *common_tbl2;
        } else {
            eep->modal_header_5g.ant_ctrl_common = *common_tbl1;
            eep->modal_header_5g.ant_ctrl_common2 = *common_tbl2;
        }

        break;
    default:
        break;
    }

    return AH_TRUE;
}
