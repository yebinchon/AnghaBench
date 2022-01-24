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
struct ieee80211_channel {int /*<<< orphan*/  ic_freq; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  IEEE80211_CHAN_ANY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_channel*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC8(int s, struct ieee80211_channel *chan, const char *val)
{
	int v, flags;
	char *eptr;

	FUNC6(chan, 0, sizeof(*chan));
	if (FUNC3(val)) {
		chan->ic_freq = IEEE80211_CHAN_ANY;
		return;
	}
	FUNC1(s);
	errno = 0;
	v = FUNC7(val, &eptr, 10);
	if (val[0] == '\0' || val == eptr || errno == ERANGE ||
	    /* channel may be suffixed with nothing, :flag, or /width */
	    (eptr[0] != '\0' && eptr[0] != ':' && eptr[0] != '/'))
		FUNC0(1, "invalid channel specification%s",
		    errno == ERANGE ? " (out of range)" : "");
	flags = FUNC2(val, v);
	if (v > 255) {		/* treat as frequency */
		FUNC5(chan, v, flags);
	} else {
		FUNC4(chan, v, flags);
	}
}