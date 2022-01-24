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
struct wpa_driver_ndis_data {int /*<<< orphan*/  ctx; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_ndis_data*) ; 
 scalar_t__ FUNC1 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct wpa_driver_ndis_data *drv)
{
	FUNC2(MSG_DEBUG, "NDIS: Media Connect Event");
	if (FUNC1(drv, drv->bssid) == 0) {
		FUNC0(drv);
		FUNC3(drv->ctx, EVENT_ASSOC, NULL);
	}
}