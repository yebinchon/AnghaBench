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
struct afswtch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_WEP ; 
 int IEEE80211_WEP_MIXED ; 
 int IEEE80211_WEP_OFF ; 
 int IEEE80211_WEP_ON ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	int	mode;

	if (FUNC2(val, "off") == 0) {
		mode = IEEE80211_WEP_OFF;
	} else if (FUNC2(val, "on") == 0) {
		mode = IEEE80211_WEP_ON;
	} else if (FUNC2(val, "mixed") == 0) {
		mode = IEEE80211_WEP_MIXED;
	} else {
		FUNC0(1, "unknown wep mode");
	}

	FUNC1(s, IEEE80211_IOC_WEP, mode, 0, NULL);
}