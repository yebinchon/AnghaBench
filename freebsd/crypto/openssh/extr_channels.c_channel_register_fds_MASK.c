#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssh_channels {void* channel_max_fd; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct TYPE_3__ {int rfd; int wfd; int sock; int efd; int extended_usage; int isatty; int wfd_isatty; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ssh *ssh, Channel *c, int rfd, int wfd, int efd,
    int extusage, int nonblock, int is_tty)
{
	struct ssh_channels *sc = ssh->chanctxt;

	/* Update the maximum file descriptor value. */
	sc->channel_max_fd = FUNC0(sc->channel_max_fd, rfd);
	sc->channel_max_fd = FUNC0(sc->channel_max_fd, wfd);
	sc->channel_max_fd = FUNC0(sc->channel_max_fd, efd);

	if (rfd != -1)
		FUNC2(rfd, F_SETFD, FD_CLOEXEC);
	if (wfd != -1 && wfd != rfd)
		FUNC2(wfd, F_SETFD, FD_CLOEXEC);
	if (efd != -1 && efd != rfd && efd != wfd)
		FUNC2(efd, F_SETFD, FD_CLOEXEC);

	c->rfd = rfd;
	c->wfd = wfd;
	c->sock = (rfd == wfd) ? rfd : -1;
	c->efd = efd;
	c->extended_usage = extusage;

	if ((c->isatty = is_tty) != 0)
		FUNC1("channel %d: rfd %d isatty", c->self, c->rfd);
#ifdef _AIX
	/* XXX: Later AIX versions can't push as much data to tty */
	c->wfd_isatty = is_tty || isatty(c->wfd);
#endif

	/* enable nonblocking mode */
	if (nonblock) {
		if (rfd != -1)
			FUNC4(rfd);
		if (wfd != -1)
			FUNC4(wfd);
		if (efd != -1)
			FUNC4(efd);
	}
}