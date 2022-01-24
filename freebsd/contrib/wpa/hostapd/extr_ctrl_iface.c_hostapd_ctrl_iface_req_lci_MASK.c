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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct hostapd_data *hapd,
				      const char *cmd)
{
	u8 addr[ETH_ALEN];

	if (FUNC1(cmd, addr)) {
		FUNC2(MSG_INFO, "CTRL: REQ_LCI: Invalid MAC address");
		return -1;
	}

	return FUNC0(hapd, addr);
}