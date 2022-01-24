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
struct TYPE_2__ {int /*<<< orphan*/  ievent; int /*<<< orphan*/  ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
struct wpa_driver_ndis_data {int /*<<< orphan*/  ctx; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_INTERFACE_REMOVED ; 
 int /*<<< orphan*/  EVENT_INTERFACE_STATUS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

void FUNC4(struct wpa_driver_ndis_data *drv)
{
	union wpa_event_data event;

	FUNC2(MSG_DEBUG, "NDIS: Notify Adapter Removal");
	FUNC0(&event, 0, sizeof(event));
	FUNC1(event.interface_status.ifname, drv->ifname,
		   sizeof(event.interface_status.ifname));
	event.interface_status.ievent = EVENT_INTERFACE_REMOVED;
	FUNC3(drv->ctx, EVENT_INTERFACE_STATUS, &event);
}