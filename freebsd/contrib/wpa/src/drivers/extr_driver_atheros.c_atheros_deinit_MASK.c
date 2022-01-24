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
struct atheros_driver_data {scalar_t__ ioctl_sock; int /*<<< orphan*/ * sock_raw; int /*<<< orphan*/ * sock_xmit; int /*<<< orphan*/ * sock_recv; int /*<<< orphan*/  iface; int /*<<< orphan*/  netlink; scalar_t__ wps_probe_resp_ie; scalar_t__ wps_beacon_ie; scalar_t__ wpa_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atheros_driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct atheros_driver_data*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(void *priv)
{
	struct atheros_driver_data *drv = priv;

	FUNC0(drv);

	if (drv->wpa_ie || drv->wps_beacon_ie || drv->wps_probe_resp_ie) {
		FUNC1(priv, NULL, 0);
		FUNC7(drv->wpa_ie);
		FUNC7(drv->wps_beacon_ie);
		FUNC7(drv->wps_probe_resp_ie);
	}
	FUNC5(drv->netlink);
	(void) FUNC4(drv->ioctl_sock, drv->iface, 0);
	if (drv->ioctl_sock >= 0)
		FUNC2(drv->ioctl_sock);
	if (drv->sock_recv != NULL && drv->sock_recv != drv->sock_xmit)
		FUNC3(drv->sock_recv);
	if (drv->sock_xmit != NULL)
		FUNC3(drv->sock_xmit);
	if (drv->sock_raw)
		FUNC3(drv->sock_raw);
	FUNC6(drv);
}