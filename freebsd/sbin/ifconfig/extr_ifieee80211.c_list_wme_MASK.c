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

/* Variables and functions */
 int IEEE80211_WMEPARAM_BSS ; 
 int WME_AC_BE ; 
 int WME_AC_VO ; 
 int /*<<< orphan*/  FUNC0 (int,char const*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC1(int s)
{
	static const char *acnames[] = { "AC_BE", "AC_BK", "AC_VI", "AC_VO" };
	int ac;

	if (verbose) {
		/* display both BSS and local settings */
		for (ac = WME_AC_BE; ac <= WME_AC_VO; ac++) {
	again:
			if (ac & IEEE80211_WMEPARAM_BSS)
				FUNC0(s, "     ", ac);
			else
				FUNC0(s, acnames[ac], ac);
			if ((ac & IEEE80211_WMEPARAM_BSS) == 0) {
				ac |= IEEE80211_WMEPARAM_BSS;
				goto again;
			} else
				ac &= ~IEEE80211_WMEPARAM_BSS;
		}
	} else {
		/* display only channel settings */
		for (ac = WME_AC_BE; ac <= WME_AC_VO; ac++)
			FUNC0(s, acnames[ac], ac);
	}
}