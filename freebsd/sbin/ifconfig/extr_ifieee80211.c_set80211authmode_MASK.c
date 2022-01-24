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
 int IEEE80211_AUTH_8021X ; 
 int IEEE80211_AUTH_NONE ; 
 int IEEE80211_AUTH_OPEN ; 
 int IEEE80211_AUTH_SHARED ; 
 int IEEE80211_AUTH_WPA ; 
 int /*<<< orphan*/  IEEE80211_IOC_AUTHMODE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	int	mode;

	if (FUNC2(val, "none") == 0) {
		mode = IEEE80211_AUTH_NONE;
	} else if (FUNC2(val, "open") == 0) {
		mode = IEEE80211_AUTH_OPEN;
	} else if (FUNC2(val, "shared") == 0) {
		mode = IEEE80211_AUTH_SHARED;
	} else if (FUNC2(val, "8021x") == 0) {
		mode = IEEE80211_AUTH_8021X;
	} else if (FUNC2(val, "wpa") == 0) {
		mode = IEEE80211_AUTH_WPA;
	} else {
		FUNC0(1, "unknown authmode");
	}

	FUNC1(s, IEEE80211_IOC_AUTHMODE, mode, 0, NULL);
}