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
typedef  int /*<<< orphan*/  u_long ;
struct inoinfo {void* i_number; scalar_t__ i_parent; scalar_t__ i_dotdot; } ;
struct inodesc {void* id_number; char* id_name; int /*<<< orphan*/  id_func; void* id_parent; int /*<<< orphan*/  id_type; } ;
typedef  void* ino_t ;
struct TYPE_2__ {int ino_state; int /*<<< orphan*/  ino_linkcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int DCLEAR ; 
 void* DFOUND ; 
 int FOUND ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  UFS_MAXNAMLEN ; 
 scalar_t__ UFS_ROOTINO ; 
 scalar_t__ bkgrdflag ; 
 char* cdevname ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inodesc*) ; 
 int /*<<< orphan*/  clearentry ; 
 int countdirs ; 
 int /*<<< orphan*/  findname ; 
 struct inoinfo* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ got_sigalarm ; 
 scalar_t__ got_siginfo ; 
 TYPE_1__* FUNC5 (void*) ; 
 int inplast ; 
 struct inoinfo** inpsort ; 
 void* lfdir ; 
 scalar_t__ FUNC6 (void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ resolved ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ usedsoftdep ; 

void
FUNC13(void)
{
	struct inoinfo *inp;
	int loopcnt, inpindex, state;
	ino_t orphan;
	struct inodesc idesc;
	char namebuf[UFS_MAXNAMLEN+1];

	for (inpindex = inplast - 1; inpindex >= 0; inpindex--) {
		if (got_siginfo) {
			FUNC9("%s: phase 3: dir %d of %d (%d%%)\n", cdevname,
			    (int)(inplast - inpindex - 1), (int)inplast,
			    (int)((inplast - inpindex - 1) * 100 / inplast));
			got_siginfo = 0;
		}
		if (got_sigalarm) {
			FUNC12("%s p3 %d%%", cdevname,
			    (int)((inplast - inpindex - 1) * 100 / inplast));
			got_sigalarm = 0;
		}
		inp = inpsort[inpindex];
		state = FUNC5(inp->i_number)->ino_state;
		if (inp->i_number == UFS_ROOTINO ||
		    (inp->i_parent != 0 && !FUNC1(state)))
			continue;
		if (state == DCLEAR)
			continue;
		/*
		 * If we are running with soft updates and we come
		 * across unreferenced directories, we just leave
		 * them in DSTATE which will cause them to be pitched
		 * in pass 4.
		 */
		if ((preen || bkgrdflag) &&
		    resolved && usedsoftdep && FUNC1(state)) {
			if (inp->i_dotdot >= UFS_ROOTINO)
				FUNC5(inp->i_dotdot)->ino_linkcnt++;
			continue;
		}
		for (loopcnt = 0; ; loopcnt++) {
			orphan = inp->i_number;
			if (inp->i_parent == 0 ||
			    !FUNC0(inp->i_parent) ||
			    loopcnt > countdirs)
				break;
			inp = FUNC3(inp->i_parent);
		}
		if (loopcnt <= countdirs) {
			if (FUNC6(orphan, inp->i_dotdot, NULL)) {
				inp->i_parent = inp->i_dotdot = lfdir;
				FUNC5(lfdir)->ino_linkcnt--;
			}
			FUNC5(orphan)->ino_state = DFOUND;
			FUNC10();
			continue;
		}
		FUNC8("ORPHANED DIRECTORY LOOP DETECTED I=%lu",
		    (u_long)orphan);
		if (FUNC11("RECONNECT") == 0)
			continue;
		FUNC7(&idesc, 0, sizeof(struct inodesc));
		idesc.id_type = DATA;
		idesc.id_number = inp->i_parent;
		idesc.id_parent = orphan;
		idesc.id_func = findname;
		idesc.id_name = namebuf;
		if ((FUNC2(FUNC4(inp->i_parent), &idesc) & FOUND) == 0)
			FUNC8("COULD NOT FIND NAME IN PARENT DIRECTORY");
		if (FUNC6(orphan, inp->i_parent, namebuf)) {
			idesc.id_func = clearentry;
			if (FUNC2(FUNC4(inp->i_parent), &idesc) & FOUND)
				FUNC5(orphan)->ino_linkcnt++;
			inp->i_parent = inp->i_dotdot = lfdir;
			FUNC5(lfdir)->ino_linkcnt--;
		}
		FUNC5(orphan)->ino_state = DFOUND;
		FUNC10();
	}
}