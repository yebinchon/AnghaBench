#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_7__ {int flags; scalar_t__ type; int ostate; int istate; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int CHAN_CLOSE_RCVD ; 
 int /*<<< orphan*/  CHAN_INPUT_CLOSED ; 
#define  CHAN_INPUT_OPEN 130 
#define  CHAN_INPUT_WAIT_DRAIN 129 
 int CHAN_LOCAL ; 
 int /*<<< orphan*/  CHAN_OUTPUT_CLOSED ; 
#define  CHAN_OUTPUT_OPEN 128 
 int /*<<< orphan*/  CHAN_OUTPUT_WAIT_DRAIN ; 
 scalar_t__ SSH_CHANNEL_LARVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ssh *ssh, Channel *c)
{
	FUNC4("channel %d: rcvd close", c->self);
	if (!(c->flags & CHAN_LOCAL)) {
		if (c->flags & CHAN_CLOSE_RCVD)
			FUNC5("channel %d: protocol error: close rcvd twice",
			    c->self);
		c->flags |= CHAN_CLOSE_RCVD;
	}
	if (c->type == SSH_CHANNEL_LARVAL) {
		/* tear down larval channels immediately */
		FUNC2(c, CHAN_OUTPUT_CLOSED);
		FUNC1(c, CHAN_INPUT_CLOSED);
		return;
	}
	switch (c->ostate) {
	case CHAN_OUTPUT_OPEN:
		/*
		 * wait until a data from the channel is consumed if a CLOSE
		 * is received
		 */
		FUNC2(c, CHAN_OUTPUT_WAIT_DRAIN);
		break;
	}
	switch (c->istate) {
	case CHAN_INPUT_OPEN:
		FUNC3(ssh, c);
		FUNC1(c, CHAN_INPUT_CLOSED);
		break;
	case CHAN_INPUT_WAIT_DRAIN:
		if (!(c->flags & CHAN_LOCAL))
			FUNC0(ssh, c);
		FUNC1(c, CHAN_INPUT_CLOSED);
		break;
	}
}