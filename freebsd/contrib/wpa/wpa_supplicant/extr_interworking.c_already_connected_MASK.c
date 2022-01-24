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
struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ priority; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; struct wpa_cred* parent_cred; } ;
struct wpa_cred {int dummy; } ;
struct wpa_bss {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 scalar_t__ WPA_ASSOCIATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpa_bss* FUNC1 (struct wpa_supplicant*,struct wpa_ssid**) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s,
			     struct wpa_cred *cred, struct wpa_bss *bss)
{
	struct wpa_ssid *ssid, *sel_ssid;
	struct wpa_bss *selected;

	if (wpa_s->wpa_state < WPA_ASSOCIATED || wpa_s->current_ssid == NULL)
		return 0;

	ssid = wpa_s->current_ssid;
	if (ssid->parent_cred != cred)
		return 0;

	if (ssid->ssid_len != bss->ssid_len ||
	    FUNC0(ssid->ssid, bss->ssid, bss->ssid_len) != 0)
		return 0;

	sel_ssid = NULL;
	selected = FUNC1(wpa_s, &sel_ssid);
	if (selected && sel_ssid && sel_ssid->priority > ssid->priority)
		return 0; /* higher priority network in scan results */

	return 1;
}