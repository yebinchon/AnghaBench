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
struct ieee80211req_chanlist {int /*<<< orphan*/  ic_channels; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  chanlist ;

/* Variables and functions */
 int IEEE80211_CHAN_MAX ; 
 int /*<<< orphan*/  IEEE80211_IOC_CHANLIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211req_chanlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ieee80211req_chanlist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,char*,int*,int*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12(const char *val, int d, int s, const struct afswtch *rafp)
{
	struct ieee80211req_chanlist chanlist;
	char *temp, *cp, *tp;

	temp = FUNC4(FUNC11(val) + 1);
	if (temp == NULL)
		FUNC0(1, "malloc failed");
	FUNC10(temp, val);
	FUNC5(&chanlist, 0, sizeof(chanlist));
	cp = temp;
	for (;;) {
		int first, last, f, c;

		tp = FUNC9(cp, ',');
		if (tp != NULL)
			*tp++ = '\0';
		switch (FUNC8(cp, "%u-%u", &first, &last)) {
		case 1:
			if (first > IEEE80211_CHAN_MAX)
				FUNC0(-1, "channel %u out of range, max %u",
					first, IEEE80211_CHAN_MAX);
			FUNC7(chanlist.ic_channels, first);
			break;
		case 2:
			if (first > IEEE80211_CHAN_MAX)
				FUNC0(-1, "channel %u out of range, max %u",
					first, IEEE80211_CHAN_MAX);
			if (last > IEEE80211_CHAN_MAX)
				FUNC0(-1, "channel %u out of range, max %u",
					last, IEEE80211_CHAN_MAX);
			if (first > last)
				FUNC0(-1, "void channel range, %u > %u",
					first, last);
			for (f = first; f <= last; f++)
				FUNC7(chanlist.ic_channels, f);
			break;
		}
		if (tp == NULL)
			break;
		c = *tp;
		while (FUNC3(c))
			tp++;
		if (!FUNC2(c))
			break;
		cp = tp;
	}
	FUNC6(s, IEEE80211_IOC_CHANLIST, 0, sizeof(chanlist), &chanlist);
	FUNC1(temp);
}