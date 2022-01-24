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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct activemap {int am_mediasize; int am_nextents; int am_diskmapsize; int am_syncoff; scalar_t__ am_magic; struct activemap* am_syncmap; struct activemap* am_memmap; struct activemap* am_diskmap; struct activemap* am_memtab; scalar_t__ am_nkeepdirty; int /*<<< orphan*/  am_keepdirty; scalar_t__ am_ndirty; int /*<<< orphan*/  am_mapsize; int /*<<< orphan*/  am_extentshift; scalar_t__ am_extentsize; scalar_t__ am_nkeepdirty_limit; } ;

/* Variables and functions */
 scalar_t__ ACTIVEMAP_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (struct activemap*) ; 
 struct activemap* FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC10(struct activemap **ampp, uint64_t mediasize, uint32_t extentsize,
    uint32_t sectorsize, uint32_t keepdirty)
{
	struct activemap *amp;

	FUNC0(ampp != NULL);
	FUNC0(mediasize > 0);
	FUNC0(extentsize > 0);
	FUNC0(FUNC8(extentsize));
	FUNC0(sectorsize > 0);
	FUNC0(FUNC8(sectorsize));
	FUNC0(keepdirty > 0);

	amp = FUNC7(sizeof(*amp));
	if (amp == NULL)
		return (-1);

	amp->am_mediasize = mediasize;
	amp->am_nkeepdirty_limit = keepdirty;
	amp->am_extentsize = extentsize;
	amp->am_extentshift = FUNC3(extentsize - 1);
	amp->am_nextents = ((mediasize - 1) / extentsize) + 1;
	amp->am_mapsize = FUNC4(amp->am_nextents);
	amp->am_diskmapsize = FUNC9(amp->am_mapsize, sectorsize);
	amp->am_ndirty = 0;
	amp->am_syncoff = -2;
	FUNC1(&amp->am_keepdirty);
	amp->am_nkeepdirty = 0;

	amp->am_memtab = FUNC5(amp->am_nextents, sizeof(amp->am_memtab[0]));
	amp->am_diskmap = FUNC5(1, amp->am_diskmapsize);
	amp->am_memmap = FUNC2(amp->am_nextents);
	amp->am_syncmap = FUNC2(amp->am_nextents);

	/*
	 * Check to see if any of the allocations above failed.
	 */
	if (amp->am_memtab == NULL || amp->am_diskmap == NULL ||
	    amp->am_memmap == NULL || amp->am_syncmap == NULL) {
		if (amp->am_memtab != NULL)
			FUNC6(amp->am_memtab);
		if (amp->am_diskmap != NULL)
			FUNC6(amp->am_diskmap);
		if (amp->am_memmap != NULL)
			FUNC6(amp->am_memmap);
		if (amp->am_syncmap != NULL)
			FUNC6(amp->am_syncmap);
		amp->am_magic = 0;
		FUNC6(amp);
		errno = ENOMEM;
		return (-1);
	}

	amp->am_magic = ACTIVEMAP_MAGIC;
	*ampp = amp;

	return (0);
}