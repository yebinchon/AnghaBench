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
struct TYPE_2__ {int /*<<< orphan*/  p2p_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_GROUP_REMOVAL_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	if (wpa_s->current_ssid == NULL || !wpa_s->current_ssid->p2p_group)
		return;

	FUNC0(MSG_DEBUG, "P2P: Remove group due to driver resource not "
		   "being available anymore");
	FUNC1(wpa_s, P2P_GROUP_REMOVAL_UNAVAILABLE);
}