#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal_9300 {scalar_t__ ah_rifs_enabled; int* ah_rifs_reg; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah_curchan; } ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AH_FALSE ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int AR_PHY_RIFS_INIT_DELAY ; 
 int /*<<< orphan*/  AR_PHY_RIFS_SRCH ; 
 int /*<<< orphan*/  AR_PHY_SEARCH_START_DELAY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC8(struct ath_hal *ah, HAL_BOOL enable)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_CHANNEL_INTERNAL *ichan =
      FUNC7(ah, FUNC1(ah)->ah_curchan);
    HAL_BOOL is_chan_2g = FUNC3(ichan);
    u_int32_t tmp = 0;

    if (enable) {
        if (ahp->ah_rifs_enabled == AH_TRUE) {
            return AH_TRUE;
        }

        FUNC6(ah, AR_PHY_SEARCH_START_DELAY, ahp->ah_rifs_reg[0]);
        FUNC6(ah, AR_PHY_RIFS_SRCH,
                     ahp->ah_rifs_reg[1]);

        ahp->ah_rifs_enabled = AH_TRUE;
        FUNC4(ahp->ah_rifs_reg, sizeof(ahp->ah_rifs_reg));
    } else {
        if (ahp->ah_rifs_enabled == AH_TRUE) {
            ahp->ah_rifs_reg[0] = FUNC5(ah,
                                              AR_PHY_SEARCH_START_DELAY);
            ahp->ah_rifs_reg[1] = FUNC5(ah, AR_PHY_RIFS_SRCH);
        }
        /* Change rifs init delay to 0 */
        FUNC6(ah, AR_PHY_RIFS_SRCH,
                     (ahp->ah_rifs_reg[1] & ~(AR_PHY_RIFS_INIT_DELAY)));
        tmp = 0xfffff000 & FUNC5(ah, AR_PHY_SEARCH_START_DELAY);        
        if (is_chan_2g) {
            if (FUNC2(FUNC1(ah)->ah_curchan)) {
                FUNC6(ah, AR_PHY_SEARCH_START_DELAY, tmp | 500);
            } else { /* Sowl 2G HT-20 default is 0x134 for search start delay */
                FUNC6(ah, AR_PHY_SEARCH_START_DELAY, tmp | 250);
            }
        } else {
            if (FUNC2(FUNC1(ah)->ah_curchan)) {
                FUNC6(ah, AR_PHY_SEARCH_START_DELAY, tmp | 0x370);
            } else { /* Sowl 5G HT-20 default is 0x1b8 for search start delay */
                FUNC6(ah, AR_PHY_SEARCH_START_DELAY, tmp | 0x1b8);
            }
        }

        ahp->ah_rifs_enabled = AH_FALSE;
    }
    return AH_TRUE;

}