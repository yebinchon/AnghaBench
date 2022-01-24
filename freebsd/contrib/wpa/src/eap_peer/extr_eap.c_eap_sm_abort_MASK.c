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
struct eap_sm {int /*<<< orphan*/ * eapSessionId; int /*<<< orphan*/ * eapRespData; int /*<<< orphan*/ * lastRespData; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_eapSuccess ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct eap_sm *sm)
{
	FUNC3(sm->lastRespData);
	sm->lastRespData = NULL;
	FUNC3(sm->eapRespData);
	sm->eapRespData = NULL;
	FUNC0(sm);
	FUNC2(sm->eapSessionId);
	sm->eapSessionId = NULL;

	/* This is not clearly specified in the EAP statemachines draft, but
	 * it seems necessary to make sure that some of the EAPOL variables get
	 * cleared for the next authentication. */
	FUNC1(sm, EAPOL_eapSuccess, FALSE);
}