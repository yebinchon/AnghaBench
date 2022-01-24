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
struct eap_sm {scalar_t__ decision; int reqId; int lastId; scalar_t__ methodState; scalar_t__ selectedMethod; scalar_t__ reqMethod; scalar_t__ reauthInit; scalar_t__ rxResp; scalar_t__ rxSuccess; scalar_t__ rxReq; scalar_t__ allowNotifications; scalar_t__ rxFailure; scalar_t__ workaround; } ;

/* Variables and functions */
 scalar_t__ DECISION_FAIL ; 
 scalar_t__ DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  EAP ; 
 scalar_t__ EAP_TYPE_IDENTITY ; 
 scalar_t__ EAP_TYPE_LEAP ; 
 scalar_t__ EAP_TYPE_NONE ; 
 scalar_t__ EAP_TYPE_NOTIFICATION ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  GET_METHOD ; 
 int /*<<< orphan*/  IDENTITY ; 
 int /*<<< orphan*/  METHOD ; 
 scalar_t__ METHOD_CONT ; 
 scalar_t__ METHOD_DONE ; 
 scalar_t__ METHOD_MAY_CONT ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  RETRANSMIT ; 
 int /*<<< orphan*/  SEND_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUCCESS ; 
 int FUNC1 (struct eap_sm*) ; 
 scalar_t__ FUNC2 (struct eap_sm*) ; 
 scalar_t__ FUNC3 (struct eap_sm*,int,int) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm)
{
	int duplicate = FUNC1(sm);

	/*
	 * Two special cases below for LEAP are local additions to work around
	 * odd LEAP behavior (EAP-Success in the middle of authentication and
	 * then swapped roles). Other transitions are based on RFC 4137.
	 */
	if (sm->rxSuccess && sm->decision != DECISION_FAIL &&
	    (sm->reqId == sm->lastId ||
	     FUNC3(sm, sm->reqId, sm->lastId)))
		FUNC0(EAP, SUCCESS);
	else if (sm->workaround && sm->lastId == -1 && sm->rxSuccess &&
		 !sm->rxFailure && !sm->rxReq && FUNC2(sm))
		FUNC0(EAP, SUCCESS); /* EAP-Success prior any EAP method */
	else if (sm->workaround && sm->lastId == -1 && sm->rxFailure &&
		 !sm->rxReq && sm->methodState != METHOD_CONT &&
		 FUNC2(sm))
		FUNC0(EAP, FAILURE); /* EAP-Failure prior any EAP method */
	else if (sm->workaround && sm->rxSuccess && !sm->rxFailure &&
		 !sm->rxReq && sm->methodState != METHOD_CONT &&
		 FUNC2(sm))
		FUNC0(EAP, SUCCESS); /* EAP-Success after Identity */
	else if (sm->methodState != METHOD_CONT &&
		 ((sm->rxFailure &&
		   sm->decision != DECISION_UNCOND_SUCC) ||
		  (sm->rxSuccess && sm->decision == DECISION_FAIL &&
		   (sm->selectedMethod != EAP_TYPE_LEAP ||
		    sm->methodState != METHOD_MAY_CONT))) &&
		 (sm->reqId == sm->lastId ||
		  FUNC3(sm, sm->reqId, sm->lastId)))
		FUNC0(EAP, FAILURE);
	else if (sm->rxReq && duplicate)
		FUNC0(EAP, RETRANSMIT);
	else if (sm->rxReq && !duplicate &&
		 sm->reqMethod == EAP_TYPE_NOTIFICATION &&
		 sm->allowNotifications)
		FUNC0(EAP, NOTIFICATION);
	else if (sm->rxReq && !duplicate &&
		 sm->selectedMethod == EAP_TYPE_NONE &&
		 sm->reqMethod == EAP_TYPE_IDENTITY)
		FUNC0(EAP, IDENTITY);
	else if (sm->rxReq && !duplicate &&
		 sm->selectedMethod == EAP_TYPE_NONE &&
		 sm->reqMethod != EAP_TYPE_IDENTITY &&
		 sm->reqMethod != EAP_TYPE_NOTIFICATION)
		FUNC0(EAP, GET_METHOD);
	else if (sm->rxReq && !duplicate &&
		 sm->reqMethod == sm->selectedMethod &&
		 sm->methodState != METHOD_DONE)
		FUNC0(EAP, METHOD);
	else if (sm->selectedMethod == EAP_TYPE_LEAP &&
		 (sm->rxSuccess || sm->rxResp))
		FUNC0(EAP, METHOD);
	else if (sm->reauthInit)
		FUNC0(EAP, SEND_RESPONSE);
	else
		FUNC0(EAP, DISCARD);
}