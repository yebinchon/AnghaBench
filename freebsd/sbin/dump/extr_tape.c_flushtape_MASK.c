#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int sent; scalar_t__ firstrec; scalar_t__ tblock; int /*<<< orphan*/  inode; scalar_t__ tapea; scalar_t__ count; int /*<<< orphan*/  fd; TYPE_1__* req; } ;
struct TYPE_6__ {scalar_t__ c_type; int c_count; scalar_t__* c_addr; scalar_t__ c_tapea; } ;
struct TYPE_5__ {scalar_t__ count; } ;

/* Variables and functions */
 size_t SLAVES ; 
 int TP_NINDIR ; 
 scalar_t__ TS_BITS ; 
 scalar_t__ TS_CLRI ; 
 scalar_t__ TS_END ; 
 scalar_t__ asize ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ blocksperfile ; 
 scalar_t__ blocksthisvol ; 
 int /*<<< orphan*/  blockswritten ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  curino ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ lastspclrec ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ nextblock ; 
 scalar_t__ ntrec ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  pipeout ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* slaves ; 
 TYPE_3__* slp ; 
 TYPE_2__ spcl ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ tenths ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t trecno ; 
 scalar_t__ tsize ; 
 int /*<<< orphan*/  unlimited ; 
 int /*<<< orphan*/  write ; 
 int writesize ; 

__attribute__((used)) static void
FUNC11(void)
{
	int i, blks, got;
	int64_t lastfirstrec;

	int siz = (char *)nextblock - (char *)slp->req;

	slp->req[trecno].count = 0;			/* Sentinel */

	if (FUNC1(write, slp->fd, (char *)slp->req, siz) != siz)
		FUNC6("error writing command pipe: %s\n", FUNC9(errno));
	slp->sent = 1; /* we sent a request, read the response later */

	lastfirstrec = slp->firstrec;

	if (++slp >= &slaves[SLAVES])
		slp = &slaves[0];

	/* Read results back from next slave */
	if (slp->sent) {
		if (FUNC1(read, slp->fd, (char *)&got, sizeof got)
		    != sizeof got) {
			FUNC5("  DUMP: error reading command pipe in master");
			FUNC3(0);
		}
		slp->sent = 0;

		/* Check for end of tape */
		if (got < writesize) {
			FUNC4("End of tape detected\n");

			/*
			 * Drain the results, don't care what the values were.
			 * If we read them here then trewind won't...
			 */
			for (i = 0; i < SLAVES; i++) {
				if (slaves[i].sent) {
					if (FUNC1(read, slaves[i].fd,
					    (char *)&got, sizeof got)
					    != sizeof got) {
						FUNC5("  DUMP: error reading command pipe in master");
						FUNC3(0);
					}
					slaves[i].sent = 0;
				}
			}

			FUNC2();
			FUNC7();
			return;
		}
	}

	blks = 0;
	if (spcl.c_type != TS_END && spcl.c_type != TS_CLRI &&
	    spcl.c_type != TS_BITS) {
		FUNC0(spcl.c_count <= TP_NINDIR);
		for (i = 0; i < spcl.c_count; i++)
			if (spcl.c_addr[i] != 0)
				blks++;
	}
	slp->count = lastspclrec + blks + 1 - spcl.c_tapea;
	slp->tapea = spcl.c_tapea;
	slp->firstrec = lastfirstrec + ntrec;
	slp->inode = curino;
	nextblock = slp->tblock;
	trecno = 0;
	asize += tenths;
	blockswritten += ntrec;
	blocksthisvol += ntrec;
	if (!pipeout && !unlimited && (blocksperfile ?
	    (blocksthisvol >= blocksperfile) : (asize > tsize))) {
		FUNC2();
		FUNC8(0);
	}
	FUNC10();
}