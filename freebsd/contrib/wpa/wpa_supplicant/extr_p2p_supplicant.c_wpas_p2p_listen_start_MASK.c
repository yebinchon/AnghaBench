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
struct wpa_supplicant {unsigned int max_remain_on_chan; TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC1(struct wpa_supplicant *wpa_s, unsigned int timeout)
{
	/* Limit maximum Listen state time based on driver limitation. */
	if (timeout > wpa_s->max_remain_on_chan)
		timeout = wpa_s->max_remain_on_chan;

	return FUNC0(wpa_s->global->p2p, timeout);
}