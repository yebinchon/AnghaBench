#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct activemap {scalar_t__ am_magic; size_t am_mapsize; int am_nextents; scalar_t__ am_ndirty; int /*<<< orphan*/ * am_memtab; int /*<<< orphan*/  am_memmap; int /*<<< orphan*/  am_syncmap; int /*<<< orphan*/  am_diskmap; } ;

/* Variables and functions */
 scalar_t__ ACTIVEMAP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct activemap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct activemap*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

void
FUNC6(struct activemap *amp, const unsigned char *buf, size_t size)
{
	int ext;

	FUNC0(amp->am_magic == ACTIVEMAP_MAGIC);
	FUNC0(size >= amp->am_mapsize);

	FUNC5(amp->am_diskmap, buf, amp->am_mapsize);
	FUNC5(amp->am_memmap, buf, amp->am_mapsize);
	FUNC5(amp->am_syncmap, buf, amp->am_mapsize);

	FUNC2(amp->am_memmap, amp->am_nextents, &ext);
	if (ext == -1) {
		/* There are no dirty extents, so we can leave now. */
		return;
	}
	/*
	 * Set synchronization offset to the first dirty extent.
	 */
	FUNC1(amp);
	/*
	 * We have dirty extents and we want them to stay that way until
	 * we synchronize, so we set number of pending writes to number
	 * of requests needed to synchronize one extent.
	 */
	amp->am_ndirty = 0;
	for (; ext < amp->am_nextents; ext++) {
		if (FUNC3(amp->am_memmap, ext)) {
			amp->am_memtab[ext] = FUNC4(amp, ext);
			amp->am_ndirty++;
		}
	}
}