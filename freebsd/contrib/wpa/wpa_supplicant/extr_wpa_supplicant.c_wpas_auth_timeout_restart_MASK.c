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
struct wpa_supplicant {int last_auth_timeout_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  wpa_supplicant_timeout ; 

void FUNC4(struct wpa_supplicant *wpa_s, int sec_diff)
{
	int new_sec = wpa_s->last_auth_timeout_sec + sec_diff;

	if (FUNC1(wpa_supplicant_timeout, wpa_s, NULL)) {
		FUNC3(wpa_s, MSG_DEBUG,
			"Authentication timeout restart: %d sec", new_sec);
		FUNC0(wpa_supplicant_timeout, wpa_s, NULL);
		FUNC2(new_sec, 0, wpa_supplicant_timeout,
				       wpa_s, NULL);
	}
}