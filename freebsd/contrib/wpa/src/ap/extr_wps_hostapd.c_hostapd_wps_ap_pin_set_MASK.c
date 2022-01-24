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
struct wps_ap_pin_data {int timeout; int /*<<< orphan*/  pin_txt; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,struct wps_ap_pin_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  wps_ap_pin_set ; 

int FUNC3(struct hostapd_data *hapd, const char *pin,
			   int timeout)
{
	struct wps_ap_pin_data data;
	int ret;

	ret = FUNC1(data.pin_txt, sizeof(data.pin_txt), "%s", pin);
	if (FUNC2(sizeof(data.pin_txt), ret))
		return -1;
	data.timeout = timeout;
	return FUNC0(hapd, wps_ap_pin_set, &data);
}