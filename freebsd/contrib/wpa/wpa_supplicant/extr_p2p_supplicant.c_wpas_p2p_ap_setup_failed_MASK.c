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
struct wpa_supplicant {int /*<<< orphan*/  p2pdev; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	if (wpa_s->global->p2p_group_formation != wpa_s)
		return;
	/* Speed up group formation timeout since this cannot succeed */
	FUNC0(wpas_p2p_group_formation_timeout,
			     wpa_s->p2pdev, NULL);
	FUNC1(0, 0, wpas_p2p_group_formation_timeout,
			       wpa_s->p2pdev, NULL);
}