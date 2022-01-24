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
struct wpa_supplicant {unsigned int off_channel_freq; scalar_t__ roc_waiting_drv_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 

void FUNC1(struct wpa_supplicant *wpa_s,
				     unsigned int freq, unsigned int duration)
{
	wpa_s->roc_waiting_drv_freq = 0;
	wpa_s->off_channel_freq = freq;
	FUNC0(wpa_s, NULL);
}