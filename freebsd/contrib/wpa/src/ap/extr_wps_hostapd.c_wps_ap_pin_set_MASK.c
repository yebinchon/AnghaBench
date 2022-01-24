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
struct wps_ap_pin_data {int /*<<< orphan*/  timeout; int /*<<< orphan*/  pin_txt; } ;
struct hostapd_data {int /*<<< orphan*/  wps_upnp; TYPE_1__* conf; int /*<<< orphan*/  wps; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd, void *ctx)
{
	struct wps_ap_pin_data *data = ctx;

	if (!hapd->wps)
		return 0;

	FUNC1(hapd->conf->ap_pin);
	hapd->conf->ap_pin = FUNC2(data->pin_txt);
#ifdef CONFIG_WPS_UPNP
	upnp_wps_set_ap_pin(hapd->wps_upnp, data->pin_txt);
#endif /* CONFIG_WPS_UPNP */
	FUNC0(hapd, data->timeout);
	return 0;
}