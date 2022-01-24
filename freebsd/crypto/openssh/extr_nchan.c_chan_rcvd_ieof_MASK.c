#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_6__ {scalar_t__ ostate; int /*<<< orphan*/  output; int /*<<< orphan*/  flags; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHAN_EOF_RCVD ; 
 scalar_t__ CHAN_OUTPUT_OPEN ; 
 scalar_t__ CHAN_OUTPUT_WAIT_DRAIN ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct ssh *ssh, Channel *c)
{
	FUNC3("channel %d: rcvd eof", c->self);
	c->flags |= CHAN_EOF_RCVD;
	if (c->ostate == CHAN_OUTPUT_OPEN)
		FUNC2(c, CHAN_OUTPUT_WAIT_DRAIN);
	if (c->ostate == CHAN_OUTPUT_WAIT_DRAIN &&
	    FUNC4(c->output) == 0 &&
	    !FUNC0(c))
		FUNC1(ssh, c);
}