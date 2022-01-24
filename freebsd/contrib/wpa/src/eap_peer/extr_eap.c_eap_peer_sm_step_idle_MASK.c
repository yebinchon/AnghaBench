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
struct eap_sm {scalar_t__ decision; scalar_t__ methodState; scalar_t__ selectedMethod; scalar_t__ peap_done; scalar_t__ leap_done; } ;

/* Variables and functions */
 scalar_t__ DECISION_FAIL ; 
 scalar_t__ DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP ; 
 int /*<<< orphan*/  EAPOL_altAccept ; 
 int /*<<< orphan*/  EAPOL_altReject ; 
 int /*<<< orphan*/  EAPOL_eapReq ; 
 int /*<<< orphan*/  EAPOL_idleWhile ; 
 scalar_t__ EAP_TYPE_LEAP ; 
 scalar_t__ EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ METHOD_CONT ; 
 scalar_t__ METHOD_DONE ; 
 int /*<<< orphan*/  RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC1 (struct eap_sm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm)
{
	/*
	 * The first three transitions are from RFC 4137. The last two are
	 * local additions to handle special cases with LEAP and PEAP server
	 * not sending EAP-Success in some cases.
	 */
	if (FUNC1(sm, EAPOL_eapReq))
		FUNC0(EAP, RECEIVED);
	else if ((FUNC1(sm, EAPOL_altAccept) &&
		  sm->decision != DECISION_FAIL) ||
		 (FUNC2(sm, EAPOL_idleWhile) == 0 &&
		  sm->decision == DECISION_UNCOND_SUCC))
		FUNC0(EAP, SUCCESS);
	else if (FUNC1(sm, EAPOL_altReject) ||
		 (FUNC2(sm, EAPOL_idleWhile) == 0 &&
		  sm->decision != DECISION_UNCOND_SUCC) ||
		 (FUNC1(sm, EAPOL_altAccept) &&
		  sm->methodState != METHOD_CONT &&
		  sm->decision == DECISION_FAIL))
		FUNC0(EAP, FAILURE);
	else if (sm->selectedMethod == EAP_TYPE_LEAP &&
		 sm->leap_done && sm->decision != DECISION_FAIL &&
		 sm->methodState == METHOD_DONE)
		FUNC0(EAP, SUCCESS);
	else if (sm->selectedMethod == EAP_TYPE_PEAP &&
		 sm->peap_done && sm->decision != DECISION_FAIL &&
		 sm->methodState == METHOD_DONE)
		FUNC0(EAP, SUCCESS);
}