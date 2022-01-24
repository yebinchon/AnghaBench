#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct ath_hal_9300 {scalar_t__ ah_bssid_mask; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_BSSMSKL ; 
 int /*<<< orphan*/  AR_BSSMSKU ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC5(struct ath_hal *ah, const u_int8_t *mask)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    /* save it since it must be rewritten on reset */
    FUNC3(ahp->ah_bssid_mask, mask, IEEE80211_ADDR_LEN);

    FUNC4(ah, AR_BSSMSKL, FUNC2(ahp->ah_bssid_mask));
    FUNC4(ah, AR_BSSMSKU, FUNC1(ahp->ah_bssid_mask + 4));
    return AH_TRUE;
}