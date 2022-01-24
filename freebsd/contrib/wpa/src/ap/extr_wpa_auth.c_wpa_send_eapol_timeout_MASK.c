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
struct wpa_state_machine {int /*<<< orphan*/  TimeoutEvt; int /*<<< orphan*/  addr; scalar_t__ pending_1_of_4_timeout; } ;
struct wpa_authenticator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGGER_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_authenticator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_state_machine*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_authenticator *wpa_auth = eloop_ctx;
	struct wpa_state_machine *sm = timeout_ctx;

	sm->pending_1_of_4_timeout = 0;
	FUNC0(wpa_auth, sm->addr, LOGGER_DEBUG, "EAPOL-Key timeout");
	sm->TimeoutEvt = TRUE;
	FUNC1(sm);
}