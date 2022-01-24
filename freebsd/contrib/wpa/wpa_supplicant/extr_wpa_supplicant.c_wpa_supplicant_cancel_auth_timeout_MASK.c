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
struct wpa_supplicant {scalar_t__ last_con_fail_realm_len; int /*<<< orphan*/ * last_con_fail_realm; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpa_supplicant_timeout ; 

void FUNC4(struct wpa_supplicant *wpa_s)
{
	FUNC3(wpa_s, MSG_DEBUG, "Cancelling authentication timeout");
	FUNC0(wpa_supplicant_timeout, wpa_s, NULL);
	FUNC2(wpa_s, wpa_s->bssid);
	FUNC1(wpa_s->last_con_fail_realm);
	wpa_s->last_con_fail_realm = NULL;
	wpa_s->last_con_fail_realm_len = 0;
}