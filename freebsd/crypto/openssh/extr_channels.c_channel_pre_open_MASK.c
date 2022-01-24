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
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_5__ {scalar_t__ istate; scalar_t__ remote_window; int rfd; scalar_t__ ostate; int wfd; int efd; scalar_t__ extended_usage; int flags; int /*<<< orphan*/  extended; int /*<<< orphan*/  self; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int CHAN_EOF_SENT ; 
 scalar_t__ CHAN_EXTENDED_IGNORE ; 
 scalar_t__ CHAN_EXTENDED_READ ; 
 scalar_t__ CHAN_EXTENDED_WRITE ; 
 scalar_t__ CHAN_INPUT_CLOSED ; 
 scalar_t__ CHAN_INPUT_OPEN ; 
 scalar_t__ CHAN_OUTPUT_CLOSED ; 
 scalar_t__ CHAN_OUTPUT_OPEN ; 
 scalar_t__ CHAN_OUTPUT_WAIT_DRAIN ; 
 int /*<<< orphan*/  CHAN_RBUF ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	if (c->istate == CHAN_INPUT_OPEN &&
	    c->remote_window > 0 &&
	    FUNC5(c->input) < c->remote_window &&
	    FUNC4(c->input, CHAN_RBUF) == 0)
		FUNC1(c->rfd, readset);
	if (c->ostate == CHAN_OUTPUT_OPEN ||
	    c->ostate == CHAN_OUTPUT_WAIT_DRAIN) {
		if (FUNC5(c->output) > 0) {
			FUNC1(c->wfd, writeset);
		} else if (c->ostate == CHAN_OUTPUT_WAIT_DRAIN) {
			if (FUNC0(c))
				FUNC3("channel %d: "
				    "obuf_empty delayed efd %d/(%zu)", c->self,
				    c->efd, FUNC5(c->extended));
			else
				FUNC2(ssh, c);
		}
	}
	/** XXX check close conditions, too */
	if (c->efd != -1 && !(c->istate == CHAN_INPUT_CLOSED &&
	    c->ostate == CHAN_OUTPUT_CLOSED)) {
		if (c->extended_usage == CHAN_EXTENDED_WRITE &&
		    FUNC5(c->extended) > 0)
			FUNC1(c->efd, writeset);
		else if (c->efd != -1 && !(c->flags & CHAN_EOF_SENT) &&
		    (c->extended_usage == CHAN_EXTENDED_READ ||
		    c->extended_usage == CHAN_EXTENDED_IGNORE) &&
		    FUNC5(c->extended) < c->remote_window)
			FUNC1(c->efd, readset);
	}
	/* XXX: What about efd? races? */
}