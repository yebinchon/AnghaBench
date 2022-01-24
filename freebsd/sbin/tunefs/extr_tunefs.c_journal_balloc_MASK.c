#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ufs2_daddr_t ;
struct TYPE_9__ {int cs_nbfree; } ;
struct cg {TYPE_1__ cg_cs; } ;
struct TYPE_11__ {scalar_t__ d_ccg; struct cg d_cg; } ;
struct TYPE_10__ {int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  clrbuf ; 
 TYPE_4__ disk ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__ sblock ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ufs2_daddr_t
FUNC7(void)
{
	ufs2_daddr_t blk;
	struct cg *cgp;
	int valid;
	static int contig = 1;

	cgp = &disk.d_cg;
	for (;;) {
		blk = FUNC1(&disk);
		if (blk > 0)
			break;
		/*
		 * If we failed to allocate a block from this cg, move to
		 * the next.
		 */
		if (FUNC3(&disk) < 0) {
			FUNC5("Failed to write updated cg");
			return (-1);
		}
		while ((valid = FUNC2(&disk)) == 1) {
			/*
			 * Try to minimize fragmentation by requiring a minimum
			 * number of blocks present.
			 */
			if (cgp->cg_cs.cs_nbfree > 256 * 1024)
				break;
			if (contig == 0 && cgp->cg_cs.cs_nbfree)
				break;
		}
		if (valid)
			continue;
		/*
		 * Try once through looking only for large contiguous regions
		 * and again taking any space we can find.
		 */
		if (contig) {
			contig = 0;
			disk.d_ccg = 0;
			FUNC6("Journal file fragmented.");
			continue;
		}
		FUNC6("Failed to find sufficient free blocks for the journal");
		return -1;
	}
	if (FUNC0(&disk, FUNC4(&sblock, blk), clrbuf,
	    sblock.fs_bsize) <= 0) {
		FUNC5("Failed to initialize new block");
		return -1;
	}
	return (blk);
}