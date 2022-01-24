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
struct wpa_supplicant {int /*<<< orphan*/ * connect_without_scan; int /*<<< orphan*/ * ap_configured_cb_data; int /*<<< orphan*/ * ap_configured_cb_ctx; int /*<<< orphan*/ * ap_configured_cb; int /*<<< orphan*/ * p2p_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct wpa_supplicant *wpa_s)
{
	FUNC0(wpa_s->p2p_group);
	wpa_s->p2p_group = NULL;

	wpa_s->ap_configured_cb = NULL;
	wpa_s->ap_configured_cb_ctx = NULL;
	wpa_s->ap_configured_cb_data = NULL;
	wpa_s->connect_without_scan = NULL;
}