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
struct TYPE_2__ {char* fs_fsmnt; scalar_t__ fs_clean; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ nflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	int ch, rval;
	char *fsys = NULL;

	while (-1 != (ch = FUNC4(argc, argv, "fdr"))) {
		switch (ch) {
		case 'f':
			/* The -f option is left for historical
			 * reasons and has no meaning.
			 */
			break;
		case 'd':
			debug++;
			break;
		case 'r':
			nflag++; /* "no" in fsck, readonly for us */
			break;
		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC9();
	else
		fsys = argv[0];

	FUNC7();
	if (!FUNC8(fsys))
		FUNC2(1, "cannot set up file system `%s'", fsys);
	FUNC5("%s file system `%s'\nLast Mounted on %s\n",
	       nflag? "Examining": "Editing", fsys, sblock.fs_fsmnt);
	rval = FUNC1();
	if (!nflag) {
		sblock.fs_clean = 0;	/* mark it dirty */
		FUNC6();
		FUNC0(0);
		FUNC5("*** FILE SYSTEM MARKED DIRTY\n");
		FUNC5("*** BE SURE TO RUN FSCK TO CLEAN UP ANY DAMAGE\n");
		FUNC5("*** IF IT WAS MOUNTED, RE-MOUNT WITH -u -o reload\n");
	}
	FUNC3(rval);
}