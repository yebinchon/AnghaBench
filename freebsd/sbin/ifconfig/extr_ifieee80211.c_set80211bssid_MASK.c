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
typedef  int /*<<< orphan*/  zerobssid ;
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_alen; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  sdl ;

/* Variables and functions */
 scalar_t__ IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_BSSID ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct sockaddr_dl*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(const char *val, int d, int s, const struct afswtch *rafp)
{

	if (!FUNC3(val)) {
		char *temp;
		struct sockaddr_dl sdl;

		temp = FUNC5(FUNC9(val) + 2); /* ':' and '\0' */
		if (temp == NULL)
			FUNC1(1, "malloc failed");
		temp[0] = ':';
		FUNC8(temp + 1, val);
		sdl.sdl_len = sizeof(sdl);
		FUNC4(temp, &sdl);
		FUNC2(temp);
		if (sdl.sdl_alen != IEEE80211_ADDR_LEN)
			FUNC1(1, "malformed link-level address");
		FUNC7(s, IEEE80211_IOC_BSSID, 0,
			IEEE80211_ADDR_LEN, FUNC0(&sdl));
	} else {
		uint8_t zerobssid[IEEE80211_ADDR_LEN];
		FUNC6(zerobssid, 0, sizeof(zerobssid));
		FUNC7(s, IEEE80211_IOC_BSSID, 0,
			IEEE80211_ADDR_LEN, zerobssid);
	}
}