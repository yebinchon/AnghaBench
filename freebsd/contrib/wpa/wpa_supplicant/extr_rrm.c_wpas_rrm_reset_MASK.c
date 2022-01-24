#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int next_neighbor_rep_token; scalar_t__ notify_neighbor_rep; scalar_t__ rrm_used; } ;
struct wpa_supplicant {TYPE_1__ rrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *),TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	wpa_s->rrm.rrm_used = 0;

	FUNC0(wpas_rrm_neighbor_rep_timeout_handler, &wpa_s->rrm,
			     NULL);
	if (wpa_s->rrm.notify_neighbor_rep)
		FUNC2(&wpa_s->rrm, NULL);
	wpa_s->rrm.next_neighbor_rep_token = 1;
	FUNC1(wpa_s);
}