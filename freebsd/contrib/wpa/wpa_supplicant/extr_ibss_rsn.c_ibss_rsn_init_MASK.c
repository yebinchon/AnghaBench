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
struct wpa_supplicant {int /*<<< orphan*/  own_addr; } ;
struct wpa_ssid {int dummy; } ;
struct ibss_rsn {struct wpa_supplicant* wpa_s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ibss_rsn*,int /*<<< orphan*/ ,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibss_rsn*) ; 
 struct ibss_rsn* FUNC2 (int) ; 

struct ibss_rsn * FUNC3(struct wpa_supplicant *wpa_s,
				struct wpa_ssid *ssid)
{
	struct ibss_rsn *ibss_rsn;

	ibss_rsn = FUNC2(sizeof(*ibss_rsn));
	if (ibss_rsn == NULL)
		return NULL;
	ibss_rsn->wpa_s = wpa_s;

	if (FUNC0(ibss_rsn, wpa_s->own_addr, ssid) < 0) {
		FUNC1(ibss_rsn);
		return NULL;
	}

	return ibss_rsn;
}