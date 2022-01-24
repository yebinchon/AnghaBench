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
struct ieee80211_txparam {int mgmtrate; int mcastrate; int ucastrate; int /*<<< orphan*/  maxretry; } ;
struct TYPE_2__ {struct ieee80211_txparam* params; } ;

/* Variables and functions */
 int IEEE80211_FIXED_RATE_NONE ; 
 int IEEE80211_MODE_11A ; 
 int IEEE80211_MODE_11NA ; 
 int IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_MAX ; 
 int IEEE80211_MODE_VHT_2GHZ ; 
 int IEEE80211_MODE_VHT_5GHZ ; 
 int IEEE80211_RATE_MCS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * modename ; 
 TYPE_1__ txparams ; 

__attribute__((used)) static void
FUNC4(int s)
{
	const struct ieee80211_txparam *tp;
	int mode;

	FUNC3(s);
	for (mode = IEEE80211_MODE_11A; mode < IEEE80211_MODE_MAX; mode++) {
		tp = &txparams.params[mode];
		if (tp->mgmtrate == 0 && tp->mcastrate == 0)
			continue;
		if (mode == IEEE80211_MODE_11NA ||
		    mode == IEEE80211_MODE_11NG ||
		    mode == IEEE80211_MODE_VHT_2GHZ ||
		    mode == IEEE80211_MODE_VHT_5GHZ) {
			if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
				FUNC0("%-7.7s ucast NONE    mgmt %2u %s "
				    "mcast %2u %s maxretry %u",
				    modename[mode],
				    FUNC2(tp->mgmtrate),
				    FUNC1(tp->mgmtrate),
				    FUNC2(tp->mcastrate),
				    FUNC1(tp->mcastrate),
				    tp->maxretry);
			else
				FUNC0("%-7.7s ucast %2u MCS  mgmt %2u %s "
				    "mcast %2u %s maxretry %u",
				    modename[mode],
				    tp->ucastrate &~ IEEE80211_RATE_MCS,
				    FUNC2(tp->mgmtrate),
				    FUNC1(tp->mgmtrate),
				    FUNC2(tp->mcastrate),
				    FUNC1(tp->mcastrate),
				    tp->maxretry);
		} else {
			if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
				FUNC0("%-7.7s ucast NONE    mgmt %2u Mb/s "
				    "mcast %2u Mb/s maxretry %u",
				    modename[mode],
				    tp->mgmtrate/2,
				    tp->mcastrate/2, tp->maxretry);
			else
				FUNC0("%-7.7s ucast %2u Mb/s mgmt %2u Mb/s "
				    "mcast %2u Mb/s maxretry %u",
				    modename[mode],
				    tp->ucastrate/2, tp->mgmtrate/2,
				    tp->mcastrate/2, tp->maxretry);
		}
	}
}