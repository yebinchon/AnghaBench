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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_hwp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 struct ieee80211_channel* AH_NULL ; 
 int /*<<< orphan*/  AR_PHY_MODE ; 
 int AR_PHY_MODE_DYNAMIC ; 
 int AR_PHY_MODE_DYN_CCK_DISABLE ; 
 int AR_PHY_MODE_OFDM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  HAL_TRUE_CHIP 128 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC4 (struct ath_hal*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC6(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t rf_mode = 0;

    if (chan == AH_NULL) {
        return;
    }
    switch (FUNC0(ah)->ah_hwp) {
    case HAL_TRUE_CHIP:
        rf_mode |= (FUNC2(chan) || FUNC3(chan)) ?
            AR_PHY_MODE_DYNAMIC : AR_PHY_MODE_OFDM;
        break;
    default:
        FUNC1(0);
        break;
    }
    /*  Phy mode bits for 5GHz channels requiring Fast Clock */
    if ( FUNC4(ah, chan)) {
        rf_mode |= (AR_PHY_MODE_DYNAMIC | AR_PHY_MODE_DYN_CCK_DISABLE);
    }
    FUNC5(ah, AR_PHY_MODE, rf_mode);
}