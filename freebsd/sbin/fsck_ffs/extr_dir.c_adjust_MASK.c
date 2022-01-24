#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
struct inodesc {scalar_t__ id_number; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_3__ {scalar_t__ value; int size; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int IFDIR ; 
 int IFMT ; 
 int /*<<< orphan*/  MIBSIZE ; 
 int /*<<< orphan*/  adjrefcnt ; 
 scalar_t__ bkgrdflag ; 
 int /*<<< orphan*/  FUNC2 (struct inodesc*,char*,int) ; 
 TYPE_1__ cmd ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 union dinode* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union dinode*) ; 
 scalar_t__ lfdir ; 
 char* lfname ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int resolved ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ usedsoftdep ; 

void
FUNC13(struct inodesc *idesc, int lcnt)
{
	union dinode *dp;
	int saveresolved;

	dp = FUNC3(idesc->id_number);
	if (FUNC0(dp, di_nlink) == lcnt) {
		/*
		 * If we have not hit any unresolved problems, are running
		 * in preen mode, and are on a file system using soft updates,
		 * then just toss any partially allocated files.
		 */
		if (resolved && (preen || bkgrdflag) && usedsoftdep) {
			FUNC2(idesc, "UNREF", 1);
			return;
		} else {
			/*
			 * The file system can be marked clean even if
			 * a file is not linked up, but is cleared.
			 * Hence, resolved should not be cleared when
			 * linkup is answered no, but clri is answered yes.
			 */
			saveresolved = resolved;
			if (FUNC5(idesc->id_number, (ino_t)0, NULL) == 0) {
				resolved = saveresolved;
				FUNC2(idesc, "UNREF", 0);
				return;
			}
			/*
			 * Account for the new reference created by linkup().
			 */
			dp = FUNC3(idesc->id_number);
			lcnt--;
		}
	}
	if (lcnt != 0) {
		FUNC9("LINK COUNT %s", (lfdir == idesc->id_number) ? lfname :
			((FUNC0(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE"));
		FUNC8(idesc->id_number, dp);
		FUNC7(" COUNT %d SHOULD BE %d",
			FUNC0(dp, di_nlink), FUNC0(dp, di_nlink) - lcnt);
		if (preen || usedsoftdep) {
			if (lcnt < 0) {
				FUNC7("\n");
				FUNC6("LINK COUNT INCREASING");
			}
			if (preen)
				FUNC7(" (ADJUSTED)\n");
		}
		if (preen || FUNC10("ADJUST") == 1) {
			if (bkgrdflag == 0) {
				FUNC1(dp, di_nlink, FUNC0(dp, di_nlink) - lcnt);
				FUNC4(dp);
			} else {
				cmd.value = idesc->id_number;
				cmd.size = -lcnt;
				if (debug)
					FUNC7("adjrefcnt ino %ld amt %lld\n",
					    (long)cmd.value,
					    (long long)cmd.size);
				if (FUNC12(adjrefcnt, MIBSIZE, 0, 0,
				    &cmd, sizeof cmd) == -1)
					FUNC11("ADJUST INODE", cmd.value);
			}
		}
	}
}