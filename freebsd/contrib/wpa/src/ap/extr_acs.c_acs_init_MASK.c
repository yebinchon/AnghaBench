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
struct hostapd_iface {int drv_flags; TYPE_1__** bss; int /*<<< orphan*/  current_mode; } ;
typedef  enum hostapd_chan_status { ____Placeholder_hostapd_chan_status } hostapd_chan_status ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_EVENT_STARTED ; 
 int /*<<< orphan*/  HAPD_IFACE_ACS ; 
 int HOSTAPD_CHAN_ACS ; 
 int HOSTAPD_CHAN_INVALID ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_DRIVER_FLAGS_ACS_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 scalar_t__ FUNC1 (struct hostapd_iface*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

enum hostapd_chan_status FUNC6(struct hostapd_iface *iface)
{
	FUNC5(MSG_INFO, "ACS: Automatic channel selection started, this may take a bit");

	if (iface->drv_flags & WPA_DRIVER_FLAGS_ACS_OFFLOAD) {
		FUNC5(MSG_INFO, "ACS: Offloading to driver");
		if (FUNC2(iface->bss[0]))
			return HOSTAPD_CHAN_INVALID;
		return HOSTAPD_CHAN_ACS;
	}

	if (!iface->current_mode)
		return HOSTAPD_CHAN_INVALID;

	FUNC0(iface);

	if (FUNC1(iface) < 0)
		return HOSTAPD_CHAN_INVALID;

	FUNC3(iface, HAPD_IFACE_ACS);
	FUNC4(iface->bss[0]->msg_ctx, MSG_INFO, ACS_EVENT_STARTED);

	return HOSTAPD_CHAN_ACS;
}