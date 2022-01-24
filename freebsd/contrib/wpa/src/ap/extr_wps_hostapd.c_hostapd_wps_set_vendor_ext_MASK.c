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
struct TYPE_4__ {int /*<<< orphan*/ ** vendor_ext; } ;
struct wps_context {TYPE_2__ dev; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** wps_vendor_ext; } ;

/* Variables and functions */
 int MAX_WPS_VENDOR_EXTENSIONS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hostapd_data *hapd,
				      struct wps_context *wps)
{
	int i;

	for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
		FUNC1(wps->dev.vendor_ext[i]);
		wps->dev.vendor_ext[i] = NULL;

		if (hapd->conf->wps_vendor_ext[i] == NULL)
			continue;

		wps->dev.vendor_ext[i] =
			FUNC0(hapd->conf->wps_vendor_ext[i]);
		if (wps->dev.vendor_ext[i] == NULL) {
			while (--i >= 0)
				FUNC1(wps->dev.vendor_ext[i]);
			return -1;
		}
	}

	return 0;
}