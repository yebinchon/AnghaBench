#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_4__ {int rs_count; int* rs_rates; } ;
typedef  TYPE_1__ HAL_RATE_SET ;

/* Variables and functions */
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_BASE_RATE_11B ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel const*) ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct ath_hal *ah, HAL_RATE_SET *rs)
{
    const struct ieee80211_channel *chan = FUNC0(ah)->ah_curchan;
    u_int32_t reg;
    u_int8_t xset;
    int i;

    if (chan == AH_NULL || !FUNC1(chan)) {
        return;
    }
    xset = 0;
    for (i = 0; i < rs->rs_count; i++) {
        u_int8_t rset = rs->rs_rates[i];
        /* Basic rate defined? */
        if ((rset & 0x80) && (rset &= 0x7f) >= xset) {
            xset = rset;
        }
    }
    /*
     * Set the h/w bit to reflect whether or not the basic
     * rate is found to be equal or less than 2Mbps.
     */
    reg = FUNC2(ah, AR_STA_ID1);
    if (xset && xset / 2 <= 2) {
        FUNC3(ah, AR_STA_ID1, reg | AR_STA_ID1_BASE_RATE_11B);
    } else {
        FUNC3(ah, AR_STA_ID1, reg &~ AR_STA_ID1_BASE_RATE_11B);
    }
}