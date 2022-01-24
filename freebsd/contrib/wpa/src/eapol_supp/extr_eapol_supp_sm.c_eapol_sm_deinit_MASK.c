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
struct eapol_sm {struct eapol_sm* ctx; int /*<<< orphan*/  eapReqData; struct eapol_sm* last_rx_key; int /*<<< orphan*/  eap_proxy; int /*<<< orphan*/  eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eapol_port_timers_tick ; 
 int /*<<< orphan*/  eapol_sm_step_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct eapol_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC2(eapol_sm_step_timeout, NULL, sm);
	FUNC2(eapol_port_timers_tick, NULL, sm);
	FUNC0(sm->eap);
#ifdef CONFIG_EAP_PROXY
	eap_proxy_deinit(sm->eap_proxy);
#endif /* CONFIG_EAP_PROXY */
	FUNC3(sm->last_rx_key);
	FUNC4(sm->eapReqData);
	FUNC3(sm->ctx);
	FUNC3(sm);
}