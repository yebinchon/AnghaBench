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
struct comm_point {int /*<<< orphan*/  timeout; TYPE_1__* ev; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 int UB_EV_READ ; 
 int UB_EV_WRITE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct comm_point* c, int rd, int wr)
{
	FUNC5(VERB_ALGO, "comm point listen_for_rw %d %d", c->fd, wr);
	if(FUNC3(c->ev->ev) != 0) {
		FUNC0("event_del error to cplf");
	}
	FUNC4(c->ev->ev, UB_EV_READ|UB_EV_WRITE);
	if(rd) FUNC2(c->ev->ev, UB_EV_READ);
	if(wr) FUNC2(c->ev->ev, UB_EV_WRITE);
	if(FUNC1(c->ev->ev, c->timeout) != 0) {
		FUNC0("event_add failed. in cplf.");
	}
}