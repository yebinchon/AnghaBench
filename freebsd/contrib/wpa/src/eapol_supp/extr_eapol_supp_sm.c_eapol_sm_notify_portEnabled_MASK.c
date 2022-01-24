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
struct eapol_sm {scalar_t__ portEnabled; int /*<<< orphan*/  force_authorized_update; } ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC2(struct eapol_sm *sm, Boolean enabled)
{
	if (sm == NULL)
		return;
	FUNC1(MSG_DEBUG, "EAPOL: External notification - "
		   "portEnabled=%d", enabled);
	if (sm->portEnabled != enabled)
		sm->force_authorized_update = TRUE;
	sm->portEnabled = enabled;
	FUNC0(sm);
}