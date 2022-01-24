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
typedef  int /*<<< orphan*/  uintmax_t ;
struct entry {int e_flags; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino; } ;

/* Variables and functions */
 int EXTRACT ; 
 int NEW ; 
 int REMOVED ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 char command ; 
 TYPE_1__ curfile ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct entry* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ maxino ; 
 char* FUNC6 (struct entry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct entry*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 long volno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

void
FUNC12(char *symtabfile)
{
	struct entry *ep;
	ino_t first;
	long curvol;

	if (command == 'R') {
		FUNC11(stdout, "Continue extraction of new leaves\n");
	} else {
		FUNC11(stdout, "Extract new leaves.\n");
		FUNC1(symtabfile, volno);
	}
	first = FUNC5(UFS_ROOTINO);
	curvol = volno;
	while (curfile.ino < maxino) {
		first = FUNC5(first);
		/*
		 * If the next available file is not the one which we
		 * expect then we have missed one or more files. Since
		 * we do not request files that were not on the tape,
		 * the lost files must have been due to a tape read error,
		 * or a file that was removed while the dump was in progress.
		 */
		while (first < curfile.ino) {
			ep = FUNC4(first);
			if (ep == NULL)
				FUNC7("%ju: bad first\n", (uintmax_t)first);
			FUNC3(stderr, "%s: not found on tape\n", FUNC6(ep));
			ep->e_flags &= ~(NEW|EXTRACT);
			first = FUNC5(first);
		}
		/*
		 * If we find files on the tape that have no corresponding
		 * directory entries, then we must have found a file that
		 * was created while the dump was in progress. Since we have
		 * no name for it, we discard it knowing that it will be
		 * on the next incremental tape.
		 */
		if (first != curfile.ino) {
			FUNC3(stderr, "expected next file %s, got %jd\n",
			    (uintmax_t)first, (uintmax_t)curfile.ino);
			FUNC9();
			goto next;
		}
		ep = FUNC4(curfile.ino);
		if (ep == NULL)
			FUNC7("unknown file on tape\n");
		if ((ep->e_flags & (NEW|EXTRACT)) == 0)
			FUNC0(ep, "unexpected file on tape");
		/*
		 * If the file is to be extracted, then the old file must
		 * be removed since its type may change from one leaf type
		 * to another (e.g. "file" to "character special").
		 */
		if ((ep->e_flags & EXTRACT) != 0) {
			FUNC8(ep);
			ep->e_flags &= ~REMOVED;
		}
		(void) FUNC2(FUNC6(ep));
		ep->e_flags &= ~(NEW|EXTRACT);
		/*
		 * We checkpoint the restore after every tape reel, so
		 * as to simplify the amount of work required by the
		 * 'R' command.
		 */
	next:
		if (curvol != volno) {
			FUNC1(symtabfile, volno);
			FUNC10();
			curvol = volno;
		}
	}
}