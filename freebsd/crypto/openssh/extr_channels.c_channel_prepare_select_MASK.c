#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  time_t ;
struct ssh {TYPE_1__* chanctxt; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  fd_mask ;
struct TYPE_2__ {int /*<<< orphan*/  channel_max_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_PRE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFDBITS ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ssh*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC8(struct ssh *ssh, fd_set **readsetp, fd_set **writesetp,
    int *maxfdp, u_int *nallocp, time_t *minwait_secs)
{
	u_int n, sz, nfdset;

	FUNC1(ssh); /* might update channel_max_fd */

	n = FUNC0(*maxfdp, ssh->chanctxt->channel_max_fd);

	nfdset = FUNC4(n+1, NFDBITS);
	/* Explicitly test here, because xrealloc isn't always called */
	if (nfdset && SIZE_MAX / nfdset < sizeof(fd_mask))
		FUNC3("channel_prepare_select: max_fd (%d) is too large", n);
	sz = nfdset * sizeof(fd_mask);

	/* perhaps check sz < nalloc/2 and shrink? */
	if (*readsetp == NULL || sz > *nallocp) {
		*readsetp = FUNC7(*readsetp, nfdset, sizeof(fd_mask));
		*writesetp = FUNC7(*writesetp, nfdset, sizeof(fd_mask));
		*nallocp = sz;
	}
	*maxfdp = n;
	FUNC5(*readsetp, 0, sz);
	FUNC5(*writesetp, 0, sz);

	if (!FUNC6(ssh))
		FUNC2(ssh, CHAN_PRE, *readsetp, *writesetp,
		    minwait_secs);
}