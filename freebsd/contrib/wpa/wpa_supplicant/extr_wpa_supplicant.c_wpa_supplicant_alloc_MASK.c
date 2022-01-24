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
struct wpa_supplicant {int scan_interval; int new_connection; int /*<<< orphan*/  fils_hlp_req; int /*<<< orphan*/  bss_tmp_disallowed; scalar_t__ sched_scanning; struct wpa_supplicant* parent; struct wpa_supplicant* p2pdev; int /*<<< orphan*/  scan_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  INITIAL_SCAN_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC1 (int) ; 

__attribute__((used)) static struct wpa_supplicant *
FUNC2(struct wpa_supplicant *parent)
{
	struct wpa_supplicant *wpa_s;

	wpa_s = FUNC1(sizeof(*wpa_s));
	if (wpa_s == NULL)
		return NULL;
	wpa_s->scan_req = INITIAL_SCAN_REQ;
	wpa_s->scan_interval = 5;
	wpa_s->new_connection = 1;
	wpa_s->parent = parent ? parent : wpa_s;
	wpa_s->p2pdev = wpa_s->parent;
	wpa_s->sched_scanning = 0;

	FUNC0(&wpa_s->bss_tmp_disallowed);
	FUNC0(&wpa_s->fils_hlp_req);

	return wpa_s;
}