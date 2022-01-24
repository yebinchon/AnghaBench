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
typedef  int u_int ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_7__ {int rfd; scalar_t__ istate; scalar_t__ (* mux_rcb ) (struct ssh*,TYPE_1__*) ;int /*<<< orphan*/  self; int /*<<< orphan*/  input; scalar_t__ mux_pause; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int CHANNEL_MUX_MAX_PACKET ; 
 scalar_t__ CHAN_INPUT_OPEN ; 
 scalar_t__ CHAN_INPUT_WAIT_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct ssh*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ssh*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	u_int need;

	if (c->rfd == -1 || !FUNC0(c->rfd, readset))
		return;
	if (c->istate != CHAN_INPUT_OPEN && c->istate != CHAN_INPUT_WAIT_DRAIN)
		return;
	if (c->mux_pause)
		return;

	/*
	 * Don't not read past the precise end of packets to
	 * avoid disrupting fd passing.
	 */
	if (FUNC6(ssh, c, 4) < 4) /* read header */
		return;
	/* XXX sshbuf_peek_u32 */
	need = FUNC1(FUNC7(c->input));
#define CHANNEL_MUX_MAX_PACKET	(256 * 1024)
	if (need > CHANNEL_MUX_MAX_PACKET) {
		FUNC5("channel %d: packet too big %u > %u",
		    c->self, CHANNEL_MUX_MAX_PACKET, need);
		FUNC3(ssh, c);
		return;
	}
	if (FUNC6(ssh, c, need + 4) < need + 4) /* read body */
		return;
	if (c->mux_rcb(ssh, c) != 0) {
		FUNC4("channel %d: mux_rcb failed", c->self);
		FUNC2(ssh, c);
		return;
	}
}