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
struct TYPE_4__ {int /*<<< orphan*/ * vendor_ext_m1; } ;
struct wps_context {TYPE_2__ dev; } ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_3__ {scalar_t__ wps_vendor_ext_m1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
				       struct wps_context *wps)
{
	FUNC2(wps->dev.vendor_ext_m1);
	wps->dev.vendor_ext_m1 = NULL;

	if (wpa_s->conf->wps_vendor_ext_m1) {
		wps->dev.vendor_ext_m1 =
			FUNC1(wpa_s->conf->wps_vendor_ext_m1);
		if (!wps->dev.vendor_ext_m1) {
			FUNC0(MSG_ERROR, "WPS: Cannot "
				   "allocate memory for vendor_ext_m1");
		}
	}
}