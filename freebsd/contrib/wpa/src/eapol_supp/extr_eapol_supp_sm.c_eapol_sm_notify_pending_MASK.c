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
struct eapol_sm {void* eapReq; void* eapolEap; scalar_t__ eapReqData; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void *ctx)
{
	struct eapol_sm *sm = ctx;
	if (sm == NULL)
		return;
	if (sm->eapReqData && !sm->eapReq) {
		FUNC1(MSG_DEBUG, "EAPOL: received notification from EAP "
			   "state machine - retrying pending EAP Request");
		sm->eapolEap = TRUE;
		sm->eapReq = TRUE;
		FUNC0(sm);
	}
}