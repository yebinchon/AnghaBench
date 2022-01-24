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
struct eapol_sm {int /*<<< orphan*/  eap; int /*<<< orphan*/  eapSuccess; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct eapol_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC2(MSG_DEBUG, "EAPOL: PMKSA caching was used - skip EAPOL");
	sm->eapSuccess = TRUE;
	FUNC0(sm->eap);
	FUNC1(sm);
}