#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sock; } ;
struct wpa_driver_wired_data {scalar_t__ dhcp_sock; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_driver_wired_data*) ; 

__attribute__((used)) static void FUNC3(void *priv)
{
	struct wpa_driver_wired_data *drv = priv;

	if (drv->common.sock >= 0) {
		FUNC1(drv->common.sock);
		FUNC0(drv->common.sock);
	}

	if (drv->dhcp_sock >= 0) {
		FUNC1(drv->dhcp_sock);
		FUNC0(drv->dhcp_sock);
	}

	FUNC2(drv);
}