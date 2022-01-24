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
struct hostapd_iface {TYPE_1__* interfaces; } ;
struct TYPE_2__ {scalar_t__ (* reload_config ) (struct hostapd_iface*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void *eloop_data, void *user_ctx)
{
	struct hostapd_iface *iface = eloop_data;

	FUNC1(MSG_DEBUG, "WPS: Reload configuration data");
	if (iface->interfaces == NULL ||
	    iface->interfaces->reload_config(iface) < 0) {
		FUNC1(MSG_WARNING, "WPS: Failed to reload the updated "
			   "configuration");
	}
}