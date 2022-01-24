#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {scalar_t__ ah_ext_prot_spacing; } ;
struct ath_hal {int dummy; } ;
typedef  int int8_t ;
struct TYPE_6__ {scalar_t__ synth_center; scalar_t__ ext_center; scalar_t__ ctl_center; } ;
struct TYPE_5__ {scalar_t__ channel; } ;
typedef  TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef  TYPE_2__ CHAN_CENTERS ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HAL_HT_EXTPROTSPACING_20 ; 
 int HT40_CHANNEL_CENTER_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 TYPE_1__* FUNC4 (struct ath_hal*,struct ieee80211_channel const*) ; 

void
FUNC5(struct ath_hal *ah, const struct ieee80211_channel *chan,
    CHAN_CENTERS *centers)
{
    int8_t      extoff;
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_CHANNEL_INTERNAL *ichan = FUNC4(ah, chan);

    if (!FUNC2(chan)) {
        centers->ctl_center = centers->ext_center =
        centers->synth_center = ichan->channel;
        return;
    }

    FUNC1(FUNC2(chan));

    /*
     * In 20/40 phy mode, the center frequency is
     * "between" the primary and extension channels.
     */
    if (FUNC3(chan)) {
        centers->synth_center = ichan->channel + HT40_CHANNEL_CENTER_SHIFT;
        extoff = 1;
    } else {
        centers->synth_center = ichan->channel - HT40_CHANNEL_CENTER_SHIFT;
        extoff = -1;
    }

    centers->ctl_center =
        centers->synth_center - (extoff * HT40_CHANNEL_CENTER_SHIFT);
    centers->ext_center =
        centers->synth_center +
        (extoff * ((ahp->ah_ext_prot_spacing == HAL_HT_EXTPROTSPACING_20) ?
            HT40_CHANNEL_CENTER_SHIFT : 15));
}