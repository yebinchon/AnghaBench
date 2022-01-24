#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* b_buf; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ fs_bsize; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CYLGRP ; 
 long BT_NUMBUFTYPES ; 
 int /*<<< orphan*/  BT_UNKNOWN ; 
 int /*<<< orphan*/  EEXIT ; 
 long MAXBUFS ; 
 long MINBUFS ; 
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bufarea*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_list ; 
 int /*<<< orphan*/  bufhead ; 
 struct bufarea cgblk ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufarea*,int /*<<< orphan*/ ) ; 
 long numbufs ; 
 struct bufarea* pbp ; 
 struct bufarea* pdirbp ; 
 scalar_t__* readcnt ; 
 TYPE_4__* readtime ; 
 TYPE_3__ sblock ; 
 scalar_t__* totalreadcnt ; 
 TYPE_2__* totalreadtime ; 

void
FUNC5(void)
{
	struct bufarea *bp;
	long bufcnt, i;
	char *bufp;

	pbp = pdirbp = (struct bufarea *)0;
	bufp = FUNC0((unsigned int)sblock.fs_bsize);
	if (bufp == NULL)
		FUNC3(EEXIT, "cannot allocate buffer pool");
	cgblk.b_un.b_buf = bufp;
	FUNC4(&cgblk, BT_CYLGRP);
	FUNC1(&bufhead);
	bufcnt = MAXBUFS;
	if (bufcnt < MINBUFS)
		bufcnt = MINBUFS;
	for (i = 0; i < bufcnt; i++) {
		bp = (struct bufarea *)FUNC0(sizeof(struct bufarea));
		bufp = FUNC0((unsigned int)sblock.fs_bsize);
		if (bp == NULL || bufp == NULL) {
			if (i >= MINBUFS)
				break;
			FUNC3(EEXIT, "cannot allocate buffer pool");
		}
		bp->b_un.b_buf = bufp;
		FUNC2(&bufhead, bp, b_list);
		FUNC4(bp, BT_UNKNOWN);
	}
	numbufs = i;	/* save number of buffers */
	for (i = 0; i < BT_NUMBUFTYPES; i++) {
		readtime[i].tv_sec = totalreadtime[i].tv_sec = 0;
		readtime[i].tv_nsec = totalreadtime[i].tv_nsec = 0;
		readcnt[i] = totalreadcnt[i] = 0;
	}
}