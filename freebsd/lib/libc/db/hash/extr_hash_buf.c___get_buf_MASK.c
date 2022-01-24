#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_17__ {int SGSIZE; int SSHIFT; int /*<<< orphan*/  new_file; TYPE_1__*** dir; } ;
struct TYPE_16__ {int addr; int /*<<< orphan*/  page; struct TYPE_16__* ovfl; } ;
typedef  TYPE_1__** SEGMENT ;
typedef  TYPE_2__ HTAB ;
typedef  TYPE_1__ BUFHEAD ;

/* Variables and functions */
 int BUF_DISK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int,TYPE_1__*) ; 

BUFHEAD *
FUNC7(HTAB *hashp, u_int32_t addr,
    BUFHEAD *prev_bp,	/* If prev_bp set, indicates a new overflow page. */
    int newpage)
{
	BUFHEAD *bp;
	u_int32_t is_disk_mask;
	int is_disk, segment_ndx;
	SEGMENT segp;

	is_disk = 0;
	is_disk_mask = 0;
	if (prev_bp) {
		bp = prev_bp->ovfl;
		if (!bp || (bp->addr != addr))
			bp = NULL;
		if (!newpage)
			is_disk = BUF_DISK;
	} else {
		/* Grab buffer out of directory */
		segment_ndx = addr & (hashp->SGSIZE - 1);

		/* valid segment ensured by __call_hash() */
		segp = hashp->dir[addr >> hashp->SSHIFT];
#ifdef DEBUG
		assert(segp != NULL);
#endif
		bp = FUNC3(segp[segment_ndx]);
		is_disk_mask = FUNC1(segp[segment_ndx]);
		is_disk = is_disk_mask || !hashp->new_file;
	}

	if (!bp) {
		bp = FUNC6(hashp, addr, prev_bp);
		if (!bp ||
		    FUNC4(hashp, bp->page, addr, !prev_bp, is_disk, 0))
			return (NULL);
		if (!prev_bp)
			segp[segment_ndx] =
			    (BUFHEAD *)((intptr_t)bp | is_disk_mask);
	} else {
		FUNC0(bp);
		FUNC2(bp);
	}
	return (bp);
}