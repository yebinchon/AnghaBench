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
struct eapol_state_machine {void* eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_state_machine*) ; 

int FUNC2(struct eapol_state_machine *sm, void *ctx)
{
	if (sm == NULL || ctx == NULL || ctx != sm->eap)
		return -1;

	FUNC0(sm->eap);
	FUNC1(sm);

	return 0;
}