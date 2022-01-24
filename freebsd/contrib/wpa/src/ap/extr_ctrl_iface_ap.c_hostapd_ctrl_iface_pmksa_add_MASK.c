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
typedef  int /*<<< orphan*/  u8 ;
struct hostapd_data {int /*<<< orphan*/  wpa_auth; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int PMKID_LEN ; 
 size_t PMK_LEN ; 
 int PMK_LEN_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*,char*,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int,int) ; 

int FUNC5(struct hostapd_data *hapd, char *cmd)
{
	u8 spa[ETH_ALEN];
	u8 pmkid[PMKID_LEN];
	u8 pmk[PMK_LEN_MAX];
	size_t pmk_len;
	char *pos, *pos2;
	int akmp = 0, expiration = 0;

	/*
	 * Entry format:
	 * <STA addr> <PMKID> <PMK> <expiration in seconds> <akmp>
	 */

	if (FUNC1(cmd, spa))
		return -1;

	pos = FUNC2(cmd, ' ');
	if (!pos)
		return -1;
	pos++;

	if (FUNC0(pos, pmkid, PMKID_LEN) < 0)
		return -1;

	pos = FUNC2(pos, ' ');
	if (!pos)
		return -1;
	pos++;

	pos2 = FUNC2(pos, ' ');
	if (!pos2)
		return -1;
	pmk_len = (pos2 - pos) / 2;
	if (pmk_len < PMK_LEN || pmk_len > PMK_LEN_MAX ||
	    FUNC0(pos, pmk, pmk_len) < 0)
		return -1;

	pos = pos2 + 1;

	if (FUNC3(pos, "%d %d", &expiration, &akmp) != 2)
		return -1;

	return FUNC4(hapd->wpa_auth, spa, pmk, pmk_len,
				   pmkid, expiration, akmp);
}