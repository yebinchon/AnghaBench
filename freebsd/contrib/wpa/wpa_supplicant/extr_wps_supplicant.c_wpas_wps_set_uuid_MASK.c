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
struct wps_context {int /*<<< orphan*/  uuid; } ;
struct wpa_supplicant {TYPE_2__* conf; int /*<<< orphan*/  own_addr; struct wps_context* wps; TYPE_1__* global; struct wpa_supplicant* next; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int auto_uuid; int /*<<< orphan*/  uuid; } ;
struct TYPE_3__ {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,char const*,char*) ; 

__attribute__((used)) static void FUNC6(struct wpa_supplicant *wpa_s,
			      struct wps_context *wps)
{
	char buf[50];
	const char *src;

	if (FUNC0(wpa_s->conf->uuid)) {
		struct wpa_supplicant *first;
		first = wpa_s->global->ifaces;
		while (first && first->next)
			first = first->next;
		if (first && first != wpa_s) {
			if (wps != wpa_s->global->ifaces->wps)
				FUNC1(wps->uuid,
					  wpa_s->global->ifaces->wps->uuid,
					  WPS_UUID_LEN);
			src = "from the first interface";
		} else if (wpa_s->conf->auto_uuid == 1) {
			FUNC4(wps->uuid);
			src = "based on random data";
		} else {
			FUNC3(wpa_s->own_addr, wps->uuid);
			src = "based on MAC address";
		}
	} else {
		FUNC1(wps->uuid, wpa_s->conf->uuid, WPS_UUID_LEN);
		src = "based on configuration";
	}

	FUNC2(wps->uuid, buf, sizeof(buf));
	FUNC5(wpa_s, MSG_DEBUG, "WPS: UUID %s: %s", src, buf);
}