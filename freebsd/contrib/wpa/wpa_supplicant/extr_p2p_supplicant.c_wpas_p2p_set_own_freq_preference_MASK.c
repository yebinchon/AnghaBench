#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int num_multichan_concurrent; TYPE_2__* global; TYPE_1__* conf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * p2p; struct wpa_supplicant* p2p_init_wpa_s; scalar_t__ p2p_disabled; } ;
struct TYPE_3__ {scalar_t__ p2p_ignore_shared_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
					     int freq)
{
	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return;

	/* Use the wpa_s used to control the P2P Device operation */
	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (wpa_s->conf->p2p_ignore_shared_freq &&
	    freq > 0 && wpa_s->num_multichan_concurrent > 1 &&
	    FUNC2(wpa_s) > 0) {
		FUNC1(MSG_DEBUG, "P2P: Ignore own channel preference %d MHz due to p2p_ignore_shared_freq=1 configuration",
			   freq);
		freq = 0;
	}
	FUNC0(wpa_s->global->p2p, freq);
}