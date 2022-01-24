#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halNumAntCfg2GHz; scalar_t__ halNumAntCfg5GHz; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; struct ieee80211_channel* ah_curchan; } ;
typedef  scalar_t__ HAL_STATUS ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;
typedef  TYPE_1__ HAL_CAPABILITIES ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_COM ; 
 scalar_t__ HAL_EINVAL ; 
 scalar_t__ HAL_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ath_hal_9300*,struct ieee80211_channel const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct ath_hal*,struct ieee80211_channel const*) ; 

HAL_STATUS
FUNC6(struct ath_hal *ah, u_int32_t cfg)
{
    struct ath_hal_9300     *ahp = FUNC0(ah);
    const struct ieee80211_channel *chan = FUNC1(ah)->ah_curchan;
    HAL_CHANNEL_INTERNAL    *ichan = FUNC5(ah, chan);
    const HAL_CAPABILITIES  *p_cap = &FUNC1(ah)->ah_caps;
    u_int16_t               ant_config;
    u_int32_t               hal_num_ant_config;

    hal_num_ant_config = FUNC2(ichan) ?
        p_cap->halNumAntCfg2GHz: p_cap->halNumAntCfg5GHz;

    if (cfg < hal_num_ant_config) {
        if (HAL_OK == FUNC4(ahp, chan, cfg, &ant_config)) {
            FUNC3(ah, AR_PHY_SWITCH_COM, ant_config);
            return HAL_OK;
        }
    }

    return HAL_EINVAL;
}