#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_5__ {int istate; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_INPUT_CLOSED ; 
#define  CHAN_INPUT_OPEN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ssh *ssh, Channel *c)
{
	FUNC2("channel %d: rcvd eow", c->self);
	switch (c->istate) {
	case CHAN_INPUT_OPEN:
		FUNC1(ssh, c);
		FUNC0(c, CHAN_INPUT_CLOSED);
		break;
	}
}