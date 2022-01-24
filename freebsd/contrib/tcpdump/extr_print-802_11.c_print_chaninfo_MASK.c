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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int IEEE80211_CHAN_HALF ; 
 int IEEE80211_CHAN_HT20 ; 
 int IEEE80211_CHAN_HT40D ; 
 int IEEE80211_CHAN_HT40U ; 
 int IEEE80211_CHAN_QUARTER ; 
 int IEEE80211_CHAN_TURBO ; 
 int IEEE80211_RADIOTAP_MCS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
               uint16_t freq, int flags, int presentflags)
{
	FUNC4((ndo, "%u MHz", freq));
	if (presentflags & (1 << IEEE80211_RADIOTAP_MCS)) {
		/*
		 * We have the MCS field, so this is 11n, regardless
		 * of what the channel flags say.
		 */
		FUNC4((ndo, " 11n"));
	} else {
		if (FUNC3(flags))
			FUNC4((ndo, " FHSS"));
		if (FUNC0(flags)) {
			if (flags & IEEE80211_CHAN_HALF)
				FUNC4((ndo, " 11a/10Mhz"));
			else if (flags & IEEE80211_CHAN_QUARTER)
				FUNC4((ndo, " 11a/5Mhz"));
			else
				FUNC4((ndo, " 11a"));
		}
		if (FUNC1(flags)) {
			if (flags & IEEE80211_CHAN_HALF)
				FUNC4((ndo, " 11g/10Mhz"));
			else if (flags & IEEE80211_CHAN_QUARTER)
				FUNC4((ndo, " 11g/5Mhz"));
			else
				FUNC4((ndo, " 11g"));
		} else if (FUNC2(flags))
			FUNC4((ndo, " 11b"));
		if (flags & IEEE80211_CHAN_TURBO)
			FUNC4((ndo, " Turbo"));
	}
	/*
	 * These apply to 11n.
	 */
	if (flags & IEEE80211_CHAN_HT20)
		FUNC4((ndo, " ht/20"));
	else if (flags & IEEE80211_CHAN_HT40D)
		FUNC4((ndo, " ht/40-"));
	else if (flags & IEEE80211_CHAN_HT40U)
		FUNC4((ndo, " ht/40+"));
	FUNC4((ndo, " "));
}