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
struct wpa_supplicant {int /*<<< orphan*/  wpa; struct wpa_radio_work* connect_work; } ;
struct wpa_radio_work {scalar_t__ started; struct wpa_supplicant* wpa_s; struct wpa_connect_work* ctx; } ;
struct wpa_connect_work {int /*<<< orphan*/  ssid; int /*<<< orphan*/  bss; scalar_t__ bss_removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_connect_work*) ; 
 scalar_t__ FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wpa_radio_work *work, int deinit)
{
	struct wpa_connect_work *cwork = work->ctx;
	struct wpa_supplicant *wpa_s = work->wpa_s;

	if (deinit) {
		if (work->started)
			wpa_s->connect_work = NULL;

		FUNC4(cwork);
		return;
	}

	wpa_s->connect_work = work;

	if (cwork->bss_removed ||
	    !FUNC6(wpa_s, cwork->bss, cwork->ssid) ||
	    FUNC5(wpa_s, cwork->ssid)) {
		FUNC1(wpa_s, MSG_DEBUG, "SME: BSS/SSID entry for authentication not valid anymore - drop connection attempt");
		FUNC3(wpa_s);
		return;
	}

	/* Starting new connection, so clear the possibly used WPA IE from the
	 * previous association. */
	FUNC2(wpa_s->wpa, NULL, 0);

	FUNC0(wpa_s, cwork->bss, cwork->ssid, 1);
}