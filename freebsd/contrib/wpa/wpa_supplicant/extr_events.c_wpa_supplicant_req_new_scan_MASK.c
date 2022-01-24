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
struct wpa_supplicant {int scan_for_connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s,
					int timeout_sec, int timeout_usec)
{
	if (!FUNC1(wpa_s)) {
		/*
		 * No networks are enabled; short-circuit request so
		 * we don't wait timeout seconds before transitioning
		 * to INACTIVE state.
		 */
		FUNC0(wpa_s, MSG_DEBUG, "Short-circuit new scan request "
			"since there are no enabled networks");
		FUNC3(wpa_s, WPA_INACTIVE);
		return;
	}

	wpa_s->scan_for_connection = 1;
	FUNC2(wpa_s, timeout_sec, timeout_usec);
}