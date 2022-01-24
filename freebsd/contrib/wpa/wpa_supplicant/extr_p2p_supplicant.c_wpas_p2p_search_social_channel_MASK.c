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
struct TYPE_2__ {int /*<<< orphan*/  p2p; scalar_t__ p2p_24ghz_social_channels; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct wpa_supplicant *wpa_s,
					  int freq)
{
	if (wpa_s->global->p2p_24ghz_social_channels &&
	    (freq == 2412 || freq == 2437 || freq == 2462)) {
		/*
		 * Search all social channels regardless of whether these have
		 * been disabled for P2P operating channel use to avoid missing
		 * peers.
		 */
		return 1;
	}
	return FUNC0(wpa_s->global->p2p, freq);
}