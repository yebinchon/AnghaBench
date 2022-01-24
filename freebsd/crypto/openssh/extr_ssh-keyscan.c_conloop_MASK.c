#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  fd_mask ;
struct TYPE_6__ {int c_fd; struct timeval c_tv; } ;
typedef  TYPE_1__ con ;
struct TYPE_7__ {int /*<<< orphan*/  c_name; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_link ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* fdcon ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int maxfd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 
 int /*<<< orphan*/  read_wait ; 
 int read_wait_nfdset ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (struct timeval*) ; 
 int /*<<< orphan*/  tq ; 
 int /*<<< orphan*/ * FUNC12 (int,int) ; 

__attribute__((used)) static void
FUNC13(void)
{
	struct timeval seltime, now;
	fd_set *r, *e;
	con *c;
	int i;

	FUNC9(&now);
	c = FUNC1(&tq);

	if (c && (c->c_tv.tv_sec > now.tv_sec ||
	    (c->c_tv.tv_sec == now.tv_sec && c->c_tv.tv_usec > now.tv_usec))) {
		seltime = c->c_tv;
		seltime.tv_sec -= now.tv_sec;
		seltime.tv_usec -= now.tv_usec;
		if (seltime.tv_usec < 0) {
			seltime.tv_usec += 1000000;
			seltime.tv_sec--;
		}
	} else
		FUNC11(&seltime);

	r = FUNC12(read_wait_nfdset, sizeof(fd_mask));
	e = FUNC12(read_wait_nfdset, sizeof(fd_mask));
	FUNC8(r, read_wait, read_wait_nfdset * sizeof(fd_mask));
	FUNC8(e, read_wait, read_wait_nfdset * sizeof(fd_mask));

	while (FUNC10(maxfd, r, NULL, e, &seltime) == -1 &&
	    (errno == EAGAIN || errno == EINTR || errno == EWOULDBLOCK))
		;

	for (i = 0; i < maxfd; i++) {
		if (FUNC0(i, e)) {
			FUNC6("%s: exception!", fdcon[i].c_name);
			FUNC3(i);
		} else if (FUNC0(i, r))
			FUNC4(i);
	}
	FUNC7(r);
	FUNC7(e);

	c = FUNC1(&tq);
	while (c && (c->c_tv.tv_sec < now.tv_sec ||
	    (c->c_tv.tv_sec == now.tv_sec && c->c_tv.tv_usec < now.tv_usec))) {
		int s = c->c_fd;

		c = FUNC2(c, c_link);
		FUNC5(s);
	}
}