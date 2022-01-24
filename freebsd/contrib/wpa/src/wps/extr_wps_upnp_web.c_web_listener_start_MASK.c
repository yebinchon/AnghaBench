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
struct upnp_wps_device_sm {int /*<<< orphan*/ * web_srv; int /*<<< orphan*/  web_port; int /*<<< orphan*/  ip_addr; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct in_addr*,int,int /*<<< orphan*/ ,struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  web_connection_check_data ; 
 int /*<<< orphan*/  FUNC2 (struct upnp_wps_device_sm*) ; 

int FUNC3(struct upnp_wps_device_sm *sm)
{
	struct in_addr addr;
	addr.s_addr = sm->ip_addr;
	sm->web_srv = FUNC1(&addr, -1, web_connection_check_data,
				       sm);
	if (sm->web_srv == NULL) {
		FUNC2(sm);
		return -1;
	}
	sm->web_port = FUNC0(sm->web_srv);

	return 0;
}