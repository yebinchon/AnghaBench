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
struct wpabuf {int dummy; } ;
struct hostapd_data {scalar_t__ beacon_set_done; struct wpabuf* wps_probe_resp_ie; struct wpabuf* wps_beacon_ie; } ;

/* Variables and functions */
 int FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct wpabuf *beacon_ie,
				 struct wpabuf *probe_resp_ie)
{
	struct hostapd_data *hapd = ctx;
	FUNC2(hapd->wps_beacon_ie);
	hapd->wps_beacon_ie = beacon_ie;
	FUNC2(hapd->wps_probe_resp_ie);
	hapd->wps_probe_resp_ie = probe_resp_ie;
	if (hapd->beacon_set_done)
		FUNC1(hapd);
	return FUNC0(hapd);
}