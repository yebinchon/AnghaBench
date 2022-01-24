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
struct eap_sm {int EAP_state; int /*<<< orphan*/  eapRespData; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; int /*<<< orphan*/  ignore; int /*<<< orphan*/  reqMethod; int /*<<< orphan*/  selectedMethod; int /*<<< orphan*/  force_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  EAP ; 
 int /*<<< orphan*/  EAPOL_portEnabled ; 
#define  EAP_DISABLED 140 
#define  EAP_DISCARD 139 
#define  EAP_FAILURE 138 
#define  EAP_GET_METHOD 137 
#define  EAP_IDENTITY 136 
#define  EAP_IDLE 135 
#define  EAP_INITIALIZE 134 
#define  EAP_METHOD 133 
#define  EAP_NOTIFICATION 132 
#define  EAP_RECEIVED 131 
#define  EAP_RETRANSMIT 130 
#define  EAP_SEND_RESPONSE 129 
#define  EAP_SUCCESS 128 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  IDLE ; 
 int /*<<< orphan*/  INITIALIZE ; 
 int /*<<< orphan*/  METHOD ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  SEND_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm)
{
	switch (sm->EAP_state) {
	case EAP_INITIALIZE:
		FUNC0(EAP, IDLE);
		break;
	case EAP_DISABLED:
		if (FUNC3(sm, EAPOL_portEnabled) &&
		    !sm->force_disabled)
			FUNC0(EAP, INITIALIZE);
		break;
	case EAP_IDLE:
		FUNC1(sm);
		break;
	case EAP_RECEIVED:
		FUNC2(sm);
		break;
	case EAP_GET_METHOD:
		if (sm->selectedMethod == sm->reqMethod)
			FUNC0(EAP, METHOD);
		else
			FUNC0(EAP, SEND_RESPONSE);
		break;
	case EAP_METHOD:
		/*
		 * Note: RFC 4137 uses methodState == DONE && decision == FAIL
		 * as the condition. eapRespData == NULL here is used to allow
		 * final EAP method response to be sent without having to change
		 * all methods to either use methodState MAY_CONT or leaving
		 * decision to something else than FAIL in cases where the only
		 * expected response is EAP-Failure.
		 */
		if (sm->ignore)
			FUNC0(EAP, DISCARD);
		else if (sm->methodState == METHOD_DONE &&
			 sm->decision == DECISION_FAIL && !sm->eapRespData)
			FUNC0(EAP, FAILURE);
		else
			FUNC0(EAP, SEND_RESPONSE);
		break;
	case EAP_SEND_RESPONSE:
		FUNC0(EAP, IDLE);
		break;
	case EAP_DISCARD:
		FUNC0(EAP, IDLE);
		break;
	case EAP_IDENTITY:
		FUNC0(EAP, SEND_RESPONSE);
		break;
	case EAP_NOTIFICATION:
		FUNC0(EAP, SEND_RESPONSE);
		break;
	case EAP_RETRANSMIT:
		FUNC0(EAP, SEND_RESPONSE);
		break;
	case EAP_SUCCESS:
		break;
	case EAP_FAILURE:
		break;
	}
}