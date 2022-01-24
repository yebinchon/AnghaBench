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
struct comm_point {scalar_t__ type; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__* ev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 short UB_EV_READ ; 
 scalar_t__ comm_local ; 
 int /*<<< orphan*/  FUNC0 (int,struct comm_point*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,short) ; 
 int /*<<< orphan*/  FUNC5 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(int fd, short event, void* arg)
{
	struct comm_point* c = (struct comm_point*)arg;
	FUNC3(c->type == comm_local);
	FUNC6(c->ev->base);

	if(event&UB_EV_READ) {
		if(!FUNC0(fd, c, 1)) {
			FUNC1(FUNC2(c->callback));
			(void)(*c->callback)(c, c->cb_arg, NETEVENT_CLOSED, 
				NULL);
		}
		return;
	}
	FUNC4("Ignored event %d for localhdl.", event);
}