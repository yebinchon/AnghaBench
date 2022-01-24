#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fatEntry {size_t head; int /*<<< orphan*/  flags; } ;
struct bootblock {int bpbRootDirEnts; int bpbSecPerClust; int bpbBytesPerSec; int flags; size_t bpbRootClust; size_t NumClusters; } ;
struct TYPE_4__ {size_t head; } ;

/* Variables and functions */
 size_t CLUST_FIRST ; 
 int FAT32 ; 
 int /*<<< orphan*/  FAT_USED ; 
 int FSFATAL ; 
 int FSOK ; 
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/ * delbuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_1__* rootDir ; 

int
FUNC7(struct bootblock *boot, struct fatEntry *fat)
{
	int b1, b2;
	int ret = FSOK;
	size_t len;

	b1 = boot->bpbRootDirEnts * 32;
	b2 = boot->bpbSecPerClust * boot->bpbBytesPerSec;

	if ((buffer = FUNC2(len = FUNC0(b1, b2))) == NULL) {
		FUNC5("No space for directory buffer (%zu)", len);
		return FSFATAL;
	}

	if ((delbuf = FUNC2(len = b2)) == NULL) {
		FUNC1(buffer);
		FUNC5("No space for directory delbuf (%zu)", len);
		return FSFATAL;
	}

	if ((rootDir = FUNC4()) == NULL) {
		FUNC1(buffer);
		FUNC1(delbuf);
		FUNC5("No space for directory entry");
		return FSFATAL;
	}

	FUNC3(rootDir, 0, sizeof *rootDir);
	if (boot->flags & FAT32) {
		if (boot->bpbRootClust < CLUST_FIRST ||
		    boot->bpbRootClust >= boot->NumClusters) {
			FUNC6("Root directory starts with cluster out of range(%u)",
			       boot->bpbRootClust);
			return FSFATAL;
		}
		if (fat[boot->bpbRootClust].head != boot->bpbRootClust) {
			FUNC6("Root directory doesn't start a cluster chain");
			return FSFATAL;
		}

		fat[boot->bpbRootClust].flags |= FAT_USED;
		rootDir->head = boot->bpbRootClust;
	}

	return ret;
}