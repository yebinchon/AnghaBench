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
struct req {size_t count; scalar_t__ dblk; } ;
struct TYPE_2__ {scalar_t__* tblock; struct req* req; } ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int TP_BSIZE ; 
 int FUNC0 (int (*) (int /*<<< orphan*/ ,scalar_t__,int),int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ caught ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  diskfd ; 
 scalar_t__ errno ; 
 scalar_t__ host ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int master ; 
 size_t ntrec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int ready ; 
 int reqsiz ; 
 int FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* slp ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  tapefd ; 
 size_t trecno ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int writesize ; 

__attribute__((used)) static void
FUNC14(int cmd, int slave_number)
{
	int nread;
	int nextslave, size, wrote, eot_count;

	/*
	 * Need our own seek pointer.
	 */
	(void) FUNC2(diskfd);
	if ((diskfd = FUNC4(disk, O_RDONLY)) < 0)
		FUNC7("slave couldn't reopen disk: %s\n", FUNC12(errno));

	/*
	 * Need the pid of the next slave in the loop...
	 */
	if ((nread = FUNC0(read, cmd, (char *)&nextslave, sizeof nextslave))
	    != sizeof nextslave) {
		FUNC7("master/slave protocol botched - didn't get pid of next slave.\n");
	}

	/*
	 * Get list of blocks to dump, read the blocks into tape buffer
	 */
	while ((nread = FUNC0(read, cmd, (char *)slp->req, reqsiz)) == reqsiz) {
		struct req *p = slp->req;

		for (trecno = 0; trecno < ntrec;
		     trecno += p->count, p += p->count) {
			if (p->dblk) {
				FUNC1(p->dblk, slp->tblock[trecno],
					p->count * TP_BSIZE);
			} else {
				if (p->count != 1 || FUNC0(read, cmd,
				    (char *)slp->tblock[trecno],
				    TP_BSIZE) != TP_BSIZE)
				       FUNC7("master/slave protocol botched.\n");
			}
		}
		if (FUNC10(jmpbuf) == 0) {
			ready = 1;
			if (!caught)
				(void) FUNC5();
		}
		ready = 0;
		caught = 0;

		/* Try to write the data... */
		eot_count = 0;
		size = 0;

		wrote = 0;
		while (eot_count < 10 && size < writesize) {
#ifdef RDUMP
			if (host)
				wrote = rmtwrite(slp->tblock[0]+size,
				    writesize-size);
			else
#endif
				wrote = FUNC13(tapefd, slp->tblock[0]+size,
				    writesize-size);
#ifdef WRITEDEBUG
			printf("slave %d wrote %d\n", slave_number, wrote);
#endif
			if (wrote < 0)
				break;
			if (wrote == 0)
				eot_count++;
			size += wrote;
		}

#ifdef WRITEDEBUG
		if (size != writesize)
		 printf("slave %d only wrote %d out of %d bytes and gave up.\n",
		     slave_number, size, writesize);
#endif

		/*
		 * Handle ENOSPC as an EOT condition.
		 */
		if (wrote < 0 && errno == ENOSPC) {
			wrote = 0;
			eot_count++;
		}

		if (eot_count > 0)
			size = 0;

		if (wrote < 0) {
			(void) FUNC3(master, SIGUSR1);
			for (;;)
				(void) FUNC11(0);
		} else {
			/*
			 * pass size of write back to master
			 * (for EOT handling)
			 */
			(void) FUNC0(write, cmd, (char *)&size, sizeof size);
		}

		/*
		 * If partial write, don't want next slave to go.
		 * Also jolts him awake.
		 */
		(void) FUNC3(nextslave, SIGUSR2);
	}
	if (nread != 0)
		FUNC7("error reading command pipe: %s\n", FUNC12(errno));
}