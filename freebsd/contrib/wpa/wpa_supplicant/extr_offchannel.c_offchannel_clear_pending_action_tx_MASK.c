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
struct wpa_supplicant {int /*<<< orphan*/ * pending_action_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	FUNC0(MSG_DEBUG,
		   "Off-channel: Clear pending Action frame TX (pending_action_tx=%p",
		   wpa_s->pending_action_tx);
	FUNC1(wpa_s->pending_action_tx);
	wpa_s->pending_action_tx = NULL;
}