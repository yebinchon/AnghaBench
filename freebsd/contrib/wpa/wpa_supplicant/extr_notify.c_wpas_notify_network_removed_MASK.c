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
struct wpa_supplicant {int /*<<< orphan*/  p2p_mgmt; TYPE_1__* global; scalar_t__ wpa; struct wpa_ssid* next_ssid; } ;
struct wpa_ssid {int /*<<< orphan*/  id; int /*<<< orphan*/  p2p_group; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpa_ssid*) ; 

void FUNC5(struct wpa_supplicant *wpa_s,
				 struct wpa_ssid *ssid)
{
	if (wpa_s->next_ssid == ssid)
		wpa_s->next_ssid = NULL;
	if (wpa_s->wpa)
		FUNC1(wpa_s->wpa, ssid);
	if (!ssid->p2p_group && wpa_s->global->p2p_group_formation != wpa_s &&
	    !wpa_s->p2p_mgmt)
		FUNC2(wpa_s, ssid->id);
	if (FUNC0(ssid))
		FUNC3(wpa_s, ssid);

	FUNC4(wpa_s, ssid);
}