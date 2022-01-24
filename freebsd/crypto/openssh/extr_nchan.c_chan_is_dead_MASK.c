#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ istate; scalar_t__ ostate; scalar_t__ extended_usage; int efd; int flags; int /*<<< orphan*/  self; int /*<<< orphan*/  extended; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int CHAN_CLOSE_RCVD ; 
 int CHAN_CLOSE_SENT ; 
 scalar_t__ CHAN_EXTENDED_WRITE ; 
 scalar_t__ CHAN_INPUT_CLOSED ; 
 int CHAN_LOCAL ; 
 scalar_t__ CHAN_OUTPUT_CLOSED ; 
 int SSH_BUG_EXTEOF ; 
 scalar_t__ SSH_CHANNEL_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*) ; 
 int datafellows ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct ssh *ssh, Channel *c, int do_send)
{
	if (c->type == SSH_CHANNEL_ZOMBIE) {
		FUNC1("channel %d: zombie", c->self);
		return 1;
	}
	if (c->istate != CHAN_INPUT_CLOSED || c->ostate != CHAN_OUTPUT_CLOSED)
		return 0;
	if ((datafellows & SSH_BUG_EXTEOF) &&
	    c->extended_usage == CHAN_EXTENDED_WRITE &&
	    c->efd != -1 &&
	    FUNC2(c->extended) > 0) {
		FUNC1("channel %d: active efd: %d len %zu",
		    c->self, c->efd, FUNC2(c->extended));
		return 0;
	}
	if (c->flags & CHAN_LOCAL) {
		FUNC1("channel %d: is dead (local)", c->self);
		return 1;
	}		
	if (!(c->flags & CHAN_CLOSE_SENT)) {
		if (do_send) {
			FUNC0(ssh, c);
		} else {
			/* channel would be dead if we sent a close */
			if (c->flags & CHAN_CLOSE_RCVD) {
				FUNC1("channel %d: almost dead",
				    c->self);
				return 1;
			}
		}
	}
	if ((c->flags & CHAN_CLOSE_SENT) &&
	    (c->flags & CHAN_CLOSE_RCVD)) {
		FUNC1("channel %d: is dead", c->self);
		return 1;
	}
	return 0;
}