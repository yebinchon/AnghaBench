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
struct sta_info {int /*<<< orphan*/  next; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,size_t,char*) ; 
 scalar_t__ FUNC4 (size_t,int) ; 

int FUNC5(struct hostapd_data *hapd, const char *txtaddr,
				char *buf, size_t buflen)
{
	u8 addr[ETH_ALEN];
	struct sta_info *sta;
	int ret;

	if (FUNC2(txtaddr, addr) ||
	    (sta = FUNC0(hapd, addr)) == NULL) {
		ret = FUNC3(buf, buflen, "FAIL\n");
		if (FUNC4(buflen, ret))
			return 0;
		return ret;
	}

	if (!sta->next)
		return 0;

	return FUNC1(hapd, sta->next, buf, buflen);
}