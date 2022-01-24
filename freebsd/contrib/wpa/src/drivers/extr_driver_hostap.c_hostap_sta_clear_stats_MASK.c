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
struct prism2_hostapd_param {int /*<<< orphan*/  sta_addr; int /*<<< orphan*/  cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  PRISM2_HOSTAPD_STA_CLEAR_STATS ; 
 scalar_t__ FUNC0 (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct prism2_hostapd_param*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *priv, const u8 *addr)
{
	struct hostap_driver_data *drv = priv;
	struct prism2_hostapd_param param;

	FUNC2(&param, 0, sizeof(param));
	param.cmd = PRISM2_HOSTAPD_STA_CLEAR_STATS;
	FUNC1(param.sta_addr, addr, ETH_ALEN);
	if (FUNC0(drv, &param, sizeof(param))) {
		return -1;
	}

	return 0;
}