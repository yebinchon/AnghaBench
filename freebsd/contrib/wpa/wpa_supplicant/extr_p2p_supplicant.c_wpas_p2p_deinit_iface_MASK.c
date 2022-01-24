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
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	if (wpa_s == wpa_s->global->p2p_init_wpa_s && wpa_s->global->p2p) {
		FUNC0(wpa_s, MSG_DEBUG, "P2P: Disable P2P since removing "
			"the management interface is being removed");
		FUNC1(wpa_s->global);
	}
}