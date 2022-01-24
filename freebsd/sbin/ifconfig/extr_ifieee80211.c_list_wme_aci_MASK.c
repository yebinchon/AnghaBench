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
 int /*<<< orphan*/  IEEE80211_IOC_WME_ACKPOLICY ; 
 int /*<<< orphan*/  IEEE80211_IOC_WME_ACM ; 
 int /*<<< orphan*/  IEEE80211_IOC_WME_AIFS ; 
 int /*<<< orphan*/  IEEE80211_IOC_WME_CWMAX ; 
 int /*<<< orphan*/  IEEE80211_IOC_WME_CWMIN ; 
 int /*<<< orphan*/  IEEE80211_IOC_WME_TXOPLIMIT ; 
 int IEEE80211_WMEPARAM_BSS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(int s, const char *tag, int ac)
{
	int val;

	FUNC1("\t%s", tag);

	/* show WME BSS parameters */
	if (FUNC0(s, IEEE80211_IOC_WME_CWMIN, ac, &val) != -1)
		FUNC1(" cwmin %2u", val);
	if (FUNC0(s, IEEE80211_IOC_WME_CWMAX, ac, &val) != -1)
		FUNC1(" cwmax %2u", val);
	if (FUNC0(s, IEEE80211_IOC_WME_AIFS, ac, &val) != -1)
		FUNC1(" aifs %2u", val);
	if (FUNC0(s, IEEE80211_IOC_WME_TXOPLIMIT, ac, &val) != -1)
		FUNC1(" txopLimit %3u", val);
	if (FUNC0(s, IEEE80211_IOC_WME_ACM, ac, &val) != -1) {
		if (val)
			FUNC1(" acm");
		else if (verbose)
			FUNC1(" -acm");
	}
	/* !BSS only */
	if ((ac & IEEE80211_WMEPARAM_BSS) == 0) {
		if (FUNC0(s, IEEE80211_IOC_WME_ACKPOLICY, ac, &val) != -1) {
			if (!val)
				FUNC1(" -ack");
			else if (verbose)
				FUNC1(" ack");
		}
	}
	FUNC1("\n");
}