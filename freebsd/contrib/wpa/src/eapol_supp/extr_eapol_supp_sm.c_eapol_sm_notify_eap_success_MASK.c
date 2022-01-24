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
struct eapol_sm {int /*<<< orphan*/  eap; void* altAccept; void* eapSuccess; } ;
typedef  void* Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*) ; 

void FUNC3(struct eapol_sm *sm, Boolean success)
{
	if (sm == NULL)
		return;
	FUNC2(MSG_DEBUG, "EAPOL: External notification - "
		   "EAP success=%d", success);
	sm->eapSuccess = success;
	sm->altAccept = success;
	if (success)
		FUNC0(sm->eap);
	FUNC1(sm);
}