#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ttyfd; scalar_t__ pid; int ptymaster; int /*<<< orphan*/  tty; TYPE_1__* pw; int /*<<< orphan*/  self; } ;
struct TYPE_4__ {int /*<<< orphan*/  pw_name; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(Session *s)
{
	if (s == NULL) {
		FUNC2("session_pty_cleanup: no session");
		return;
	}
	if (s->ttyfd == -1)
		return;

	FUNC1("session_pty_cleanup: session %d release %s", s->self, s->tty);

	/* Record that the user has logged out. */
	if (s->pid != 0)
		FUNC5(s->pid, s->tty, s->pw->pw_name);

	/* Release the pseudo-tty. */
	if (FUNC3() == 0)
		FUNC4(s->tty);

	/*
	 * Close the server side of the socket pairs.  We must do this after
	 * the pty cleanup, so that another process doesn't get this pty
	 * while we're still cleaning up.
	 */
	if (s->ptymaster != -1 && FUNC0(s->ptymaster) < 0)
		FUNC2("close(s->ptymaster/%d): %s",
		    s->ptymaster, FUNC6(errno));

	/* unlink pty from session */
	s->ttyfd = -1;
}