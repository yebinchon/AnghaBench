#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211req_chaninfo {int ic_nchans; struct ieee80211_channel* ic_chans; } ;
struct ieee80211_channel {scalar_t__ ic_maxpower; int /*<<< orphan*/  ic_ieee; } ;
typedef  int /*<<< orphan*/  reported ;
struct TYPE_3__ {int ic_nchans; struct ieee80211_channel* ic_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int IEEE80211_CHAN_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* chaninfo ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211req_chaninfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211req_chaninfo* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC12(int s)
{
	struct ieee80211req_chaninfo *achans;
	uint8_t reported[IEEE80211_CHAN_BYTES];
	struct ieee80211_channel *c, *prev;
	int i, half;

	FUNC4(s);
	achans = FUNC6(FUNC0(chaninfo));
	if (achans == NULL)
		FUNC2(1, "no space for active channel list");
	achans->ic_nchans = 0;
	FUNC7(reported, 0, sizeof(reported));
	for (i = 0; i < chaninfo->ic_nchans; i++) {
		c = &chaninfo->ic_chans[i];
		/* suppress duplicates as above */
		if (FUNC5(reported, c->ic_ieee) && !verbose) {
			/* XXX we assume duplicates are adjacent */
			FUNC1(achans->ic_nchans > 0);
			prev = &achans->ic_chans[achans->ic_nchans-1];
			/* display highest power on channel */
			if (c->ic_maxpower > prev->ic_maxpower)
				*prev = *c;
		} else {
			achans->ic_chans[achans->ic_nchans++] = *c;
			FUNC11(reported, c->ic_ieee);
		}
	}
	if (!verbose) {
		half = achans->ic_nchans / 2;
		if (achans->ic_nchans % 2)
			half++;

		for (i = 0; i < achans->ic_nchans / 2; i++) {
			FUNC8(&achans->ic_chans[i]);
			FUNC8(&achans->ic_chans[half+i]);
			FUNC10("\n");
		}
		if (achans->ic_nchans % 2) {
			FUNC8(&achans->ic_chans[i]);
			FUNC10("\n");
		}
	} else {
		for (i = 0; i < achans->ic_nchans; i++) {
			FUNC9(&achans->ic_chans[i]);
			FUNC10("\n");
		}
	}
	FUNC3(achans);
}