#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int /*<<< orphan*/  p2p_group; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

__attribute__((used)) static struct wpa_supplicant *
FUNC2(struct wpa_supplicant *wpa_s)
{
	struct wpa_supplicant *save = NULL;

	if (!wpa_s)
		return NULL;

	for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (!FUNC1(wpa_s))
			continue;

		/* Prefer a group with connected clients */
		if (FUNC0(wpa_s->p2p_group))
			return wpa_s;
		save = wpa_s;
	}

	/* No group with connected clients, so pick the one without (if any) */
	return save;
}