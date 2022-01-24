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
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_7__ {int /*<<< orphan*/  ostate; int /*<<< orphan*/  istate; int /*<<< orphan*/  self; int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_CHANNEL_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ssh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	int ret = FUNC7(ssh, c->output);

	/* c->force_drain = 1; */

	if (ret == 1) {
		c->type = SSH_CHANNEL_OPEN;
		FUNC3(ssh, c, readset, writeset);
	} else if (ret == -1) {
		FUNC5("X11 connection rejected because of wrong authentication.");
		FUNC4("X11 rejected %d i%d/o%d",
		    c->self, c->istate, c->ostate);
		FUNC1(ssh, c);
		FUNC6(c->input);
		FUNC0(ssh, c);
		FUNC6(c->output);
		FUNC2(ssh, c);
		FUNC4("X11 closed %d i%d/o%d", c->self, c->istate, c->ostate);
	}
}