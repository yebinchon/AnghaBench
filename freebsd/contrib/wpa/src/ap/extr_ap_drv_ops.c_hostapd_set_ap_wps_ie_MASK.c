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
struct wpabuf {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_ap_wps_ie ) (int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*,struct wpabuf*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf**,struct wpabuf**,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct wpabuf*,struct wpabuf*,struct wpabuf*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*,struct wpabuf*) ; 

int FUNC3(struct hostapd_data *hapd)
{
	struct wpabuf *beacon, *proberesp, *assocresp;
	int ret;

	if (hapd->driver == NULL || hapd->driver->set_ap_wps_ie == NULL)
		return 0;

	if (FUNC0(hapd, &beacon, &proberesp, &assocresp) <
	    0)
		return -1;

	ret = hapd->driver->set_ap_wps_ie(hapd->drv_priv, beacon, proberesp,
					  assocresp);

	FUNC1(hapd, beacon, proberesp, assocresp);

	return ret;
}