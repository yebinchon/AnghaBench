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
typedef  int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 int FUNC2 (struct ath_hal*,int) ; 

__attribute__((used)) static u_int
FUNC3(struct ath_hal *ah, u_int clks)
{
#if 0
    const struct ieee80211_channel *chan = AH_PRIVATE(ah)->ah_curchan;

    if (chan && IEEE80211_IS_CHAN_HT40(chan)) {
        return (ath_hal_mac_usec(ah, clks) / 2);
    } else {
        return (ath_hal_mac_usec(ah, clks));
    }
#endif
    return (FUNC2(ah, clks));
}