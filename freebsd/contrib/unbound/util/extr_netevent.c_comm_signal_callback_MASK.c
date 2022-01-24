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
struct comm_signal {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  base; } ;

/* Variables and functions */
 short UB_EV_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void 
FUNC4(int sig, short event, void* arg)
{
	struct comm_signal* comsig = (struct comm_signal*)arg;
	if(!(event & UB_EV_SIGNAL))
		return;
	FUNC3(comsig->base);
	FUNC0(FUNC1(comsig->callback));
	(*comsig->callback)(sig, comsig->cb_arg);
}