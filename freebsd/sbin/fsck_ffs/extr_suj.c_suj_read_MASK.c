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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ufs2_daddr_t ;
struct jsegrec {scalar_t__ jsr_time; scalar_t__ jsr_cnt; int jsr_blocks; int jsr_seq; scalar_t__ jsr_oldest; } ;
struct suj_seg {void* ss_blk; struct jsegrec ss_rec; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_2__ {scalar_t__ fs_mtime; int fs_bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct suj_seg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allsegs ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 TYPE_1__* fs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ oldseq ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int real_dev_bsize ; 
 int /*<<< orphan*/  ss_next ; 
 int /*<<< orphan*/  suj_jblocks ; 

__attribute__((used)) static void
FUNC8(void)
{
	uint8_t block[1 * 1024 * 1024];
	struct suj_seg *seg;
	struct jsegrec *recn;
	struct jsegrec *rec;
	ufs2_daddr_t blk;
	int readsize;
	int blocks;
	int recsize;
	int size;
	int i;

	/*
	 * Read records until we exhaust the journal space.  If we find
	 * an invalid record we start searching for a valid segment header
	 * at the next block.  This is because we don't have a head/tail
	 * pointer and must recover the information indirectly.  At the gap
	 * between the head and tail we won't necessarily have a valid
	 * segment.
	 */
restart:
	for (;;) {
		size = sizeof(block);
		blk = FUNC6(suj_jblocks, size, &readsize);
		if (blk == 0)
			return;
		size = readsize;
		/*
		 * Read 1MB at a time and scan for records within this block.
		 */
		if (FUNC2(&disk, blk, &block, size) == -1) {
			FUNC3("Error reading journal block %jd\n",
			    (intmax_t)blk);
		}
		for (rec = (void *)block; size; size -= recsize,
		    rec = (struct jsegrec *)((uintptr_t)rec + recsize)) {
			recsize = real_dev_bsize;
			if (rec->jsr_time != fs->fs_mtime) {
				if (debug)
					FUNC7("Rec time %jd != fs mtime %jd\n",
					    rec->jsr_time, fs->fs_mtime);
				FUNC5(suj_jblocks, recsize);
				continue;
			}
			if (rec->jsr_cnt == 0) {
				if (debug)
					FUNC7("Found illegal count %d\n",
					    rec->jsr_cnt);
				FUNC5(suj_jblocks, recsize);
				continue;
			}
			blocks = rec->jsr_blocks;
			recsize = blocks * real_dev_bsize;
			if (recsize > size) {
				/*
				 * We may just have run out of buffer, restart
				 * the loop to re-read from this spot.
				 */
				if (size < fs->fs_bsize &&
				    size != readsize &&
				    recsize <= fs->fs_bsize)
					goto restart;
				if (debug)
					FUNC7("Found invalid segsize %d > %d\n",
					    recsize, size);
				recsize = real_dev_bsize;
				FUNC5(suj_jblocks, recsize);
				continue;
			}
			/*
			 * Verify that all blocks in the segment are present.
			 */
			for (i = 1; i < blocks; i++) {
				recn = (void *)((uintptr_t)rec) + i *
				    real_dev_bsize;
				if (recn->jsr_seq == rec->jsr_seq &&
				    recn->jsr_time == rec->jsr_time)
					continue;
				if (debug)
					FUNC7("Incomplete record %jd (%d)\n",
					    rec->jsr_seq, i);
				recsize = i * real_dev_bsize;
				FUNC5(suj_jblocks, recsize);
				goto restart;
			}
			seg = FUNC4(sizeof(*seg));
			seg->ss_blk = FUNC4(recsize);
			seg->ss_rec = *rec;
			FUNC1((void *)rec, seg->ss_blk, recsize);
			if (rec->jsr_oldest > oldseq)
				oldseq = rec->jsr_oldest;
			FUNC0(&allsegs, seg, ss_next);
			FUNC5(suj_jblocks, recsize);
		}
	}
}