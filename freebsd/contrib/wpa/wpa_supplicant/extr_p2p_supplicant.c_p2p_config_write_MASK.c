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
struct wpa_supplicant {TYPE_1__* p2pdev; } ;
struct TYPE_4__ {scalar_t__ update_config; } ;
struct TYPE_3__ {TYPE_2__* conf; int /*<<< orphan*/  confname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s)
{
#ifndef CONFIG_NO_CONFIG_WRITE
	if (wpa_s->p2pdev->conf->update_config &&
	    FUNC0(wpa_s->p2pdev->confname, wpa_s->p2pdev->conf))
		FUNC1(MSG_DEBUG, "P2P: Failed to update configuration");
#endif /* CONFIG_NO_CONFIG_WRITE */
}