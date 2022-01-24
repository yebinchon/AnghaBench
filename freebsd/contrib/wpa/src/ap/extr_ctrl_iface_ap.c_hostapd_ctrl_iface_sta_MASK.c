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
struct sta_info {int /*<<< orphan*/ * eapol_sm; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC3 (struct hostapd_data*,struct sta_info*,char*,size_t) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,size_t,char*) ; 
 scalar_t__ FUNC6 (size_t,int) ; 
 char* FUNC7 (char const*,char) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

int FUNC9(struct hostapd_data *hapd, const char *txtaddr,
			   char *buf, size_t buflen)
{
	u8 addr[ETH_ALEN];
	int ret;
	const char *pos;
	struct sta_info *sta;

	if (FUNC4(txtaddr, addr)) {
		ret = FUNC5(buf, buflen, "FAIL\n");
		if (FUNC6(buflen, ret))
			return 0;
		return ret;
	}

	sta = FUNC0(hapd, addr);
	if (sta == NULL)
		return -1;

	pos = FUNC7(txtaddr, ' ');
	if (pos) {
		pos++;

#ifdef HOSTAPD_DUMP_STATE
		if (os_strcmp(pos, "eapol") == 0) {
			if (sta->eapol_sm == NULL)
				return -1;
			return eapol_auth_dump_state(sta->eapol_sm, buf,
						     buflen);
		}
#endif /* HOSTAPD_DUMP_STATE */

		return -1;
	}

	ret = FUNC3(hapd, sta, buf, buflen);
	ret += FUNC2(addr, buf + ret, buflen - ret);

	return ret;
}