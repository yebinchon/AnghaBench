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
 int /*<<< orphan*/  IEEE80211_IOC_ROAMING ; 
 int IEEE80211_ROAMING_AUTO ; 
 int IEEE80211_ROAMING_DEVICE ; 
 int IEEE80211_ROAMING_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	int mode;

	if (FUNC2(val, "device") == 0) {
		mode = IEEE80211_ROAMING_DEVICE;
	} else if (FUNC2(val, "auto") == 0) {
		mode = IEEE80211_ROAMING_AUTO;
	} else if (FUNC2(val, "manual") == 0) {
		mode = IEEE80211_ROAMING_MANUAL;
	} else {
		FUNC0(1, "unknown roaming mode");
	}
	FUNC1(s, IEEE80211_IOC_ROAMING, mode, 0, NULL);
}