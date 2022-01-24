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
typedef  union dinode {int dummy; } dinode ;
typedef  char* u_long ;
struct inodesc {scalar_t__ id_parent; scalar_t__ id_number; int /*<<< orphan*/  id_func; int /*<<< orphan*/  id_type; int /*<<< orphan*/  id_name; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino_state; scalar_t__ ino_linkcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int ALTERED ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  DATA ; 
 scalar_t__ DFOUND ; 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int FOUND ; 
 int IFDIR ; 
 int IFMT ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC2 (struct inodesc*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,char*,scalar_t__) ; 
 int FUNC5 (union dinode*,struct inodesc*) ; 
 scalar_t__ cursnapshot ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  findino ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 union dinode* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (union dinode*) ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 
 scalar_t__ lfdir ; 
 int /*<<< orphan*/  lfmode ; 
 char* lfname ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numdirs ; 
 int /*<<< orphan*/  pass4check ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int
FUNC19(ino_t orphan, ino_t parentdir, char *name)
{
	union dinode *dp;
	int lostdir;
	ino_t oldlfdir;
	struct inodesc idesc;
	char tempname[BUFSIZ];

	FUNC12(&idesc, 0, sizeof(struct inodesc));
	dp = FUNC7(orphan);
	lostdir = (FUNC0(dp, di_mode) & IFMT) == IFDIR;
	FUNC16("UNREF %s ", lostdir ? "DIR" : "FILE");
	FUNC15(orphan, dp);
	FUNC14("\n");
	if (preen && FUNC0(dp, di_size) == 0)
		return (0);
	if (cursnapshot != 0) {
		FUNC13("FILE LINKUP IN SNAPSHOT");
		return (0);
	}
	if (preen)
		FUNC14(" (RECONNECTED)\n");
	else
		if (FUNC17("RECONNECT") == 0)
			return (0);
	if (lfdir == 0) {
		dp = FUNC7(UFS_ROOTINO);
		idesc.id_name = FUNC18(lfname);
		idesc.id_type = DATA;
		idesc.id_func = findino;
		idesc.id_number = UFS_ROOTINO;
		if ((FUNC5(dp, &idesc) & FOUND) != 0) {
			lfdir = idesc.id_parent;
		} else {
			FUNC16("NO lost+found DIRECTORY");
			if (preen || FUNC17("CREATE")) {
				lfdir = FUNC3(UFS_ROOTINO, (ino_t)0, lfmode);
				if (lfdir != 0) {
					if (FUNC11(UFS_ROOTINO, lfdir,
					    lfname) != 0) {
						numdirs++;
						if (preen)
							FUNC14(" (CREATED)\n");
					} else {
						FUNC6(lfdir, UFS_ROOTINO);
						lfdir = 0;
						if (preen)
							FUNC14("\n");
					}
				}
			}
		}
		if (lfdir == 0) {
			FUNC13("SORRY. CANNOT CREATE lost+found DIRECTORY");
			FUNC14("\n\n");
			return (0);
		}
	}
	dp = FUNC7(lfdir);
	if ((FUNC0(dp, di_mode) & IFMT) != IFDIR) {
		FUNC13("lost+found IS NOT A DIRECTORY");
		if (FUNC17("REALLOCATE") == 0)
			return (0);
		oldlfdir = lfdir;
		if ((lfdir = FUNC3(UFS_ROOTINO, (ino_t)0, lfmode)) == 0) {
			FUNC13("SORRY. CANNOT CREATE lost+found DIRECTORY\n\n");
			return (0);
		}
		if ((FUNC4(UFS_ROOTINO, lfname, lfdir) & ALTERED) == 0) {
			FUNC13("SORRY. CANNOT CREATE lost+found DIRECTORY\n\n");
			return (0);
		}
		FUNC8(dp);
		idesc.id_type = ADDR;
		idesc.id_func = pass4check;
		idesc.id_number = oldlfdir;
		FUNC2(&idesc, FUNC9(oldlfdir)->ino_linkcnt + 1);
		FUNC9(oldlfdir)->ino_linkcnt = 0;
		dp = FUNC7(lfdir);
	}
	if (FUNC9(lfdir)->ino_state != DFOUND) {
		FUNC13("SORRY. NO lost+found DIRECTORY\n\n");
		return (0);
	}
	(void)FUNC10(tempname, orphan);
	if (FUNC11(lfdir, orphan, (name ? name : tempname)) == 0) {
		FUNC13("SORRY. NO SPACE IN lost+found DIRECTORY");
		FUNC14("\n\n");
		return (0);
	}
	FUNC9(orphan)->ino_linkcnt--;
	if (lostdir) {
		if ((FUNC4(orphan, "..", lfdir) & ALTERED) == 0 &&
		    parentdir != (ino_t)-1)
			(void)FUNC11(orphan, lfdir, "..");
		dp = FUNC7(lfdir);
		FUNC1(dp, di_nlink, FUNC0(dp, di_nlink) + 1);
		FUNC8(dp);
		FUNC9(lfdir)->ino_linkcnt++;
		FUNC16("DIR I=%lu CONNECTED. ", (u_long)orphan);
		if (parentdir != (ino_t)-1) {
			FUNC14("PARENT WAS I=%lu\n", (u_long)parentdir);
			/*
			 * The parent directory, because of the ordering
			 * guarantees, has had the link count incremented
			 * for the child, but no entry was made.  This
			 * fixes the parent link count so that fsck does
			 * not need to be rerun.
			 */
			FUNC9(parentdir)->ino_linkcnt++;
		}
		if (preen == 0)
			FUNC14("\n");
	}
	return (1);
}