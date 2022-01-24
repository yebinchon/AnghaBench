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
struct wps_cancel_ctx {int /*<<< orphan*/  count; } ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ap_sta_wps_cancel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hostapd_data *hapd, void *ctx)
{
	struct wps_cancel_ctx *data = ctx;

	if (hapd->wps) {
		data->count++;
		FUNC1(hapd->wps->registrar);
		FUNC0(hapd, ap_sta_wps_cancel, NULL);
	}

	return 0;
}