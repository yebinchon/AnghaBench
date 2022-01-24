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
struct eapol_sm {int /*<<< orphan*/  portControl; } ;
typedef  int /*<<< orphan*/  PortControl ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct eapol_sm *sm, PortControl portControl)
{
	if (sm == NULL)
		return;
	FUNC2(MSG_DEBUG, "EAPOL: External notification - "
		   "portControl=%s", FUNC0(portControl));
	sm->portControl = portControl;
	FUNC1(sm);
}