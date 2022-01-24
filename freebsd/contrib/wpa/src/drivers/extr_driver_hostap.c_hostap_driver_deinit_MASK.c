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
struct hostap_driver_data {scalar_t__ ioctl_sock; scalar_t__ sock; int /*<<< orphan*/  wps_ie; int /*<<< orphan*/  generic_ie; int /*<<< orphan*/  netlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRISM2_PARAM_HOSTAPD ; 
 int /*<<< orphan*/  PRISM2_PARAM_HOSTAPD_STA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hostap_driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostap_driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hostap_driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *priv)
{
	struct hostap_driver_data *drv = priv;

	FUNC4(drv->netlink);
	(void) FUNC3(drv, 0);
	(void) FUNC2(drv, PRISM2_PARAM_HOSTAPD, 0);
	(void) FUNC2(drv, PRISM2_PARAM_HOSTAPD_STA, 0);

	if (drv->ioctl_sock >= 0)
		FUNC0(drv->ioctl_sock);

	if (drv->sock >= 0)
		FUNC0(drv->sock);

	FUNC5(drv->generic_ie);
	FUNC5(drv->wps_ie);

	FUNC1(drv);
}