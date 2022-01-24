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
struct netlink_config {int /*<<< orphan*/  newlink_cb; struct hostap_driver_data* ctx; } ;
struct hostap_driver_data {int /*<<< orphan*/ * netlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostap_driver_data*) ; 
 int /*<<< orphan*/  hostapd_wireless_event_rtm_newlink ; 
 int /*<<< orphan*/ * FUNC1 (struct netlink_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_config*) ; 
 struct netlink_config* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct hostap_driver_data *drv)
{
	struct netlink_config *cfg;

	FUNC0(drv);

	cfg = FUNC3(sizeof(*cfg));
	if (cfg == NULL)
		return -1;
	cfg->ctx = drv;
	cfg->newlink_cb = hostapd_wireless_event_rtm_newlink;
	drv->netlink = FUNC1(cfg);
	if (drv->netlink == NULL) {
		FUNC2(cfg);
		return -1;
	}

	return 0;
}