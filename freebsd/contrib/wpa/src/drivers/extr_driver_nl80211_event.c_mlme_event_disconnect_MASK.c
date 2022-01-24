#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  locally_generated; int /*<<< orphan*/  reason_code; } ;
union wpa_event_data {TYPE_1__ deauth_info; } ;
struct TYPE_4__ {int flags; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; scalar_t__ ignore_next_local_disconnect; TYPE_2__ capa; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEAUTH ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int WPA_DRIVER_FLAGS_SME ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_nl80211_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC5(struct wpa_driver_nl80211_data *drv,
				  struct nlattr *reason, struct nlattr *addr,
				  struct nlattr *by_ap)
{
	union wpa_event_data data;
	unsigned int locally_generated = by_ap == NULL;

	if (drv->capa.flags & WPA_DRIVER_FLAGS_SME) {
		/*
		 * Avoid reporting two disassociation events that could
		 * confuse the core code.
		 */
		FUNC3(MSG_DEBUG, "nl80211: Ignore disconnect "
			   "event when using userspace SME");
		return;
	}

	if (drv->ignore_next_local_disconnect) {
		drv->ignore_next_local_disconnect = 0;
		if (locally_generated) {
			FUNC3(MSG_DEBUG, "nl80211: Ignore disconnect "
				   "event triggered during reassociation");
			return;
		}
		FUNC3(MSG_WARNING, "nl80211: Was expecting local "
			   "disconnect but got another disconnect "
			   "event first");
	}

	FUNC3(MSG_DEBUG, "nl80211: Disconnect event");
	FUNC0(drv);
	FUNC2(&data, 0, sizeof(data));
	if (reason)
		data.deauth_info.reason_code = FUNC1(reason);
	data.deauth_info.locally_generated = by_ap == NULL;
	FUNC4(drv->ctx, EVENT_DEAUTH, &data);
}