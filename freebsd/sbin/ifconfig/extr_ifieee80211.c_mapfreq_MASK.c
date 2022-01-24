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
typedef  size_t u_int ;
struct ieee80211_channel {int ic_freq; int ic_flags; } ;
struct TYPE_2__ {size_t ic_nchans; struct ieee80211_channel* ic_chans; } ;

/* Variables and functions */
 TYPE_1__* chaninfo ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_channel *chan, int freq, int flags)
{
	u_int i;

	for (i = 0; i < chaninfo->ic_nchans; i++) {
		const struct ieee80211_channel *c = &chaninfo->ic_chans[i];

		if (c->ic_freq == freq && (c->ic_flags & flags) == flags) {
			if (flags == 0) {
				/* when ambiguous promote to ``best'' */
				c = &chaninfo->ic_chans[FUNC1(i)];
			}
			*chan = *c;
			return;
		}
	}
	FUNC0(1, "unknown/undefined frequency %u/0x%x", freq, flags);
}