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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC2(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    FUNC1(ah, chan);
    FUNC0(ah, chan);
}