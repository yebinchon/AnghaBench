#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cfiscsi_session {int cs_ctl_initid; TYPE_1__* cs_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  ct_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct cfiscsi_session *cs)
{
	int error;

	if (cs->cs_ctl_initid == -1)
		return;

	error = FUNC1(&cs->cs_target->ct_port, cs->cs_ctl_initid);
	if (error != 0) {
		FUNC0(cs, "ctl_remove_initiator failed with error %d",
		    error);
	}
	cs->cs_ctl_initid = -1;
}