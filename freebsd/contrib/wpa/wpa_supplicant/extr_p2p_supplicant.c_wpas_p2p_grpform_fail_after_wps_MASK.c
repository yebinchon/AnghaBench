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
struct wpa_supplicant {TYPE_1__* global; int /*<<< orphan*/  p2pdev; } ;
struct TYPE_2__ {scalar_t__ p2p_fail_on_wps_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s)
{
	FUNC2(MSG_DEBUG, "P2P: Reject group formation due to WPS provisioning failure");
	FUNC0(wpas_p2p_group_formation_timeout,
			     wpa_s->p2pdev, NULL);
	FUNC1(0, 0, wpas_p2p_group_formation_timeout,
			       wpa_s->p2pdev, NULL);
	wpa_s->global->p2p_fail_on_wps_complete = 0;
}