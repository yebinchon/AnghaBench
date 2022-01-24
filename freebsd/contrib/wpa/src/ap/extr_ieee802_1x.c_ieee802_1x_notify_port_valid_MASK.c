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
struct eapol_state_machine {int /*<<< orphan*/  portValid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_state_machine*) ; 

void FUNC1(struct eapol_state_machine *sm,
				  int valid)
{
	if (sm == NULL)
		return;
	sm->portValid = valid ? TRUE : FALSE;
	FUNC0(sm);
}