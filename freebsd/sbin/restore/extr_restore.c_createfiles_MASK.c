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
struct entry {int e_flags; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino; void* action; } ;

/* Variables and functions */
 scalar_t__ Dflag ; 
 int EXTRACT ; 
 int NEW ; 
 void* SKIP ; 
 scalar_t__ UFS_ROOTINO ; 
 TYPE_1__ curfile ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 struct entry* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ maxino ; 
 char* FUNC5 (struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int volno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

void
FUNC12(void)
{
	ino_t first, next, last;
	struct entry *ep;
	long curvol;

	FUNC11(stdout, "Extract requested files\n");
	curfile.action = SKIP;
	FUNC2((long)1);
	FUNC9();
	FUNC7();
	first = FUNC4(UFS_ROOTINO);
	last = FUNC10(maxino - 1);
	for (;;) {
		curvol = volno;
		first = FUNC4(first);
		last = FUNC10(last);
		/*
		 * Check to see if any files remain to be extracted
		 */
		if (first > last)
			return;
		if (Dflag) {
			if (curfile.ino == maxino)
				return;
			if((ep = FUNC3(curfile.ino)) != NULL &&
			    (ep->e_flags & (NEW|EXTRACT))) {
				goto justgetit;
			} else {
				FUNC8();
				continue;
			}
		}
		/*
		 * Reject any volumes with inodes greater than the last
		 * one needed, so that we can quickly skip backwards to
		 * a volume containing useful inodes. We can't do this
		 * if there are no further volumes available (curfile.ino
		 * >= maxino) or if we are already at the first tape.
		 */
		if (curfile.ino > last && curfile.ino < maxino && volno > 1) {
			curfile.action = SKIP;
			FUNC2((long)0);
			FUNC9();
			FUNC7();
			continue;
		}
		/*
		 * Decide on the next inode needed.
		 * Skip across the inodes until it is found
		 * or a volume change is encountered
		 */
		if (curfile.ino < maxino) {
			next = FUNC4(curfile.ino);
			while (next > curfile.ino && volno == curvol)
				FUNC8();
			if (volno != curvol) {
				FUNC9();
				FUNC7();
				continue;
			}
		} else {
			/*
			 * No further volumes or inodes available. Set
			 * `next' to the first inode, so that a warning
			 * is emitted below for each missing file.
			 */
			next = first;
		}
		/*
		 * If the current inode is greater than the one we were
		 * looking for then we missed the one we were looking for.
		 * Since we only attempt to extract files listed in the
		 * dump map, the lost files must have been due to a tape
		 * read error, or a file that was removed while the dump
		 * was in progress. Thus we report all requested files
		 * between the one we were looking for, and the one we
		 * found as missing, and delete their request flags.
		 */
		while (next < curfile.ino) {
			ep = FUNC3(next);
			if (ep == NULL)
				FUNC6("corrupted symbol table\n");
			FUNC1(stderr, "%s: not found on tape\n", FUNC5(ep));
			ep->e_flags &= ~NEW;
			next = FUNC4(next);
		}
		/*
		 * The current inode is the one that we are looking for,
		 * so extract it per its requested name.
		 */
		if (next == curfile.ino && next <= last) {
			ep = FUNC3(next);
			if (ep == NULL)
				FUNC6("corrupted symbol table\n");
justgetit:
			(void) FUNC0(FUNC5(ep));
			ep->e_flags &= ~NEW;
			if (volno != curvol)
				FUNC9();
		}
	}
}