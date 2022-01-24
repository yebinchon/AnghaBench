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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_private {int /*<<< orphan*/  ah_powerLimit; int /*<<< orphan*/  ah_extraTxPow; struct ieee80211_channel* ah_curchan; } ;
struct ath_hal_9300 {int /*<<< orphan*/  ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_hal_private* FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ HAL_OK ; 
 int /*<<< orphan*/  MAX_RATE_POWER ; 
 scalar_t__ FUNC3 (struct ath_hal*,int /*<<< orphan*/ *,struct ieee80211_channel const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal_private*,int /*<<< orphan*/ *,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,struct ieee80211_channel const*) ; 

HAL_BOOL
FUNC8(struct ath_hal *ah, u_int32_t limit,
    u_int16_t extra_txpow, u_int16_t tpc_in_db)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    struct ath_hal_private *ahpriv = FUNC2(ah);
    const struct ieee80211_channel *chan = ahpriv->ah_curchan;
    HAL_CHANNEL_INTERNAL *ichan = FUNC4(ah, chan);

    if (NULL == chan) {
        return AH_FALSE;
    }

    ahpriv->ah_powerLimit = FUNC1(limit, MAX_RATE_POWER);
    ahpriv->ah_extraTxPow = extra_txpow;

    if(chan == NULL) {
        return AH_FALSE;
    }
    if (FUNC3(ah, &ahp->ah_eeprom, chan,
        FUNC7(ah, chan), FUNC6(ah, chan),
        FUNC5(ahpriv, ichan, chan),
        FUNC1(MAX_RATE_POWER, ahpriv->ah_powerLimit)) != HAL_OK)
    {
        return AH_FALSE;
    }
    return AH_TRUE;
}