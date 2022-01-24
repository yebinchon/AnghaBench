#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  void* u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_private {struct ieee80211_channel* ah_curchan; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {void* ant_ctrl_common2; void* ant_ctrl_common; } ;
struct TYPE_5__ {void* ant_ctrl_common2; void* ant_ctrl_common; } ;
struct TYPE_7__ {TYPE_2__ modal_header_5g; TYPE_1__ modal_header_2g; } ;
typedef  TYPE_3__ ar9300_eeprom_t ;
struct TYPE_8__ {TYPE_3__ ah_eeprom; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 struct ath_hal_private* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_COM ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_COM_2 ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_SWITCH_TABLE_COM2_ALL ; 
 int /*<<< orphan*/  AR_SWITCH_TABLE_COM_ALL ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_channel const*) ; 
 void* FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

HAL_BOOL FUNC7(struct ath_hal *ah, u_int8_t ops,
                        u_int32_t *common_tbl1, u_int32_t *common_tbl2)
{
    ar9300_eeprom_t *eep = &FUNC0(ah)->ah_eeprom;
    struct ath_hal_private  *ap  = FUNC1(ah);
    const struct ieee80211_channel *curchan = ap->ah_curchan;
    enum {
        ANT_SELECT_OPS_GET,
        ANT_SELECT_OPS_SET,
    };

    if (FUNC2(ah) || FUNC3(ah))
        return AH_FALSE;

    if (!curchan)
        return AH_FALSE;

#define AR_SWITCH_TABLE_COM_ALL (0xffff)
#define AR_SWITCH_TABLE_COM_ALL_S (0)
#define AR_SWITCH_TABLE_COM2_ALL (0xffffff)
#define AR_SWITCH_TABLE_COM2_ALL_S (0)
    switch (ops) {
    case ANT_SELECT_OPS_GET:
        *common_tbl1 = FUNC5(ah, AR_PHY_SWITCH_COM,
                            AR_SWITCH_TABLE_COM_ALL);
        *common_tbl2 = FUNC5(ah, AR_PHY_SWITCH_COM_2,
                            AR_SWITCH_TABLE_COM2_ALL);
        break;
    case ANT_SELECT_OPS_SET:
        FUNC6(ah, AR_PHY_SWITCH_COM,
            AR_SWITCH_TABLE_COM_ALL, *common_tbl1);
        FUNC6(ah, AR_PHY_SWITCH_COM_2,
            AR_SWITCH_TABLE_COM2_ALL, *common_tbl2);

        /* write back to eeprom */
        if (FUNC4(curchan)) {
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