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
struct wpa_supplicant {TYPE_1__* p2p_send_action_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  wpas_p2p_send_action_work_timeout ; 

__attribute__((used)) static void FUNC4(void *ctx)
{
	struct wpa_supplicant *wpa_s = ctx;

	if (wpa_s->p2p_send_action_work) {
		FUNC0(wpas_p2p_send_action_work_timeout,
				     wpa_s, NULL);
		FUNC2(wpa_s->p2p_send_action_work->ctx);
		FUNC3(wpa_s->p2p_send_action_work);
		wpa_s->p2p_send_action_work = NULL;
	}

	FUNC1(wpa_s);
}