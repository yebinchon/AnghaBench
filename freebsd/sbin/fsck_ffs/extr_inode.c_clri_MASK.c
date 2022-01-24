#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
struct inodesc {scalar_t__ id_number; } ;
struct TYPE_5__ {int /*<<< orphan*/  ino_state; } ;
struct TYPE_4__ {int size; scalar_t__ value; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int IFDIR ; 
 int IFMT ; 
 int /*<<< orphan*/  MIBSIZE ; 
 int /*<<< orphan*/  USTATE ; 
 int /*<<< orphan*/  adjrefcnt ; 
 scalar_t__ bkgrdflag ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,struct inodesc*) ; 
 int /*<<< orphan*/  FUNC2 (union dinode*) ; 
 TYPE_1__ cmd ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 union dinode* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union dinode*) ; 
 TYPE_2__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  n_files ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC12(struct inodesc *idesc, const char *type, int flag)
{
	union dinode *dp;

	dp = FUNC3(idesc->id_number);
	if (flag == 1) {
		FUNC8("%s %s", type,
		    (FUNC0(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE");
		FUNC7(idesc->id_number, dp);
		FUNC6("\n");
	}
	if (preen || FUNC9("CLEAR") == 1) {
		if (preen)
			FUNC6(" (CLEARED)\n");
		n_files--;
		if (bkgrdflag == 0) {
			(void)FUNC1(dp, idesc);
			FUNC5(idesc->id_number)->ino_state = USTATE;
			FUNC2(dp);
			FUNC4(dp);
		} else {
			cmd.value = idesc->id_number;
			cmd.size = -FUNC0(dp, di_nlink);
			if (debug)
				FUNC6("adjrefcnt ino %ld amt %lld\n",
				    (long)cmd.value, (long long)cmd.size);
			if (FUNC11(adjrefcnt, MIBSIZE, 0, 0,
			    &cmd, sizeof cmd) == -1)
				FUNC10("ADJUST INODE", cmd.value);
		}
	}
}