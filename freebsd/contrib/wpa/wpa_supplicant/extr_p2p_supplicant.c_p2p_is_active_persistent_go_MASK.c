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
struct wpa_supplicant {TYPE_1__* current_ssid; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ WPAS_MODE_P2P_GO ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*) ; 

__attribute__((used)) static unsigned int FUNC1(struct wpa_supplicant *wpa_s)
{
	return FUNC0(wpa_s) &&
		wpa_s->current_ssid->mode == WPAS_MODE_P2P_GO;
}