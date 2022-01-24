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
struct wpa_priv_interface {scalar_t__ fd; struct wpa_priv_interface* sock_name; struct wpa_priv_interface* driver_name; struct wpa_priv_interface* ifname; scalar_t__* l2; scalar_t__ drv_global_priv; TYPE_1__* driver; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* global_deinit ) (scalar_t__) ;int /*<<< orphan*/  (* deinit ) (scalar_t__) ;} ;

/* Variables and functions */
 int WPA_PRIV_MAX_L2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_priv_interface*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_priv_interface*) ; 

__attribute__((used)) static void FUNC7(struct wpa_priv_interface *iface)
{
	int i;

	if (iface->drv_priv) {
		if (iface->driver->deinit)
			iface->driver->deinit(iface->drv_priv);
		if (iface->drv_global_priv)
			iface->driver->global_deinit(iface->drv_global_priv);
	}

	if (iface->fd >= 0) {
		FUNC1(iface->fd);
		FUNC0(iface->fd);
		FUNC6(iface->sock_name);
	}

	for (i = 0; i < WPA_PRIV_MAX_L2; i++) {
		if (iface->l2[i])
			FUNC2(iface->l2[i]);
	}

	FUNC3(iface->ifname);
	FUNC3(iface->driver_name);
	FUNC3(iface->sock_name);
	FUNC3(iface);
}