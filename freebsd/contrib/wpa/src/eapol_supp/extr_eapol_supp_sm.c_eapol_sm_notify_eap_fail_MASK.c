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
struct eapol_sm {void* altReject; void* eapFail; } ;
typedef  void* Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*) ; 

void FUNC2(struct eapol_sm *sm, Boolean fail)
{
	if (sm == NULL)
		return;
	FUNC1(MSG_DEBUG, "EAPOL: External notification - "
		   "EAP fail=%d", fail);
	sm->eapFail = fail;
	sm->altReject = fail;
	FUNC0(sm);
}