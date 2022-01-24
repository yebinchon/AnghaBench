#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inoinfo {intptr_t i_dotdot; intptr_t i_parent; intptr_t i_number; } ;
struct inodesc {intptr_t id_number; intptr_t id_parent; int /*<<< orphan*/  id_func; void* id_type; TYPE_1__* id_dirp; int /*<<< orphan*/  id_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  ino_linkcnt; } ;
struct TYPE_6__ {intptr_t value; intptr_t size; } ;
struct TYPE_5__ {intptr_t d_ino; char* d_name; } ;

/* Variables and functions */
 void* DATA ; 
 int FOUND ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inodesc*) ; 
 TYPE_2__ cmd ; 
 scalar_t__ cursnapshot ; 
 int /*<<< orphan*/  deleteentry ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  findino ; 
 int /*<<< orphan*/  FUNC1 (char*,intptr_t,intptr_t) ; 
 int /*<<< orphan*/  FUNC2 (intptr_t) ; 
 TYPE_3__* FUNC3 (intptr_t) ; 
 int /*<<< orphan*/  FUNC4 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC14(struct inoinfo *inp, struct inodesc *idesc)
{
	char *cp;
	struct inodesc dotdesc;
	char oldname[MAXPATHLEN + 1];
	char newname[MAXPATHLEN + 1];

	/*
	 * If we have not yet found "..", look it up now so we know
	 * which inode the directory itself believes is its parent.
	 */
	if (inp->i_dotdot == 0) {
		FUNC4(&dotdesc, 0, sizeof(struct inodesc));
		dotdesc.id_type = DATA;
		dotdesc.id_number = idesc->id_dirp->d_ino;
		dotdesc.id_func = findino;
		dotdesc.id_name = FUNC11("..");
		if ((FUNC0(FUNC2(dotdesc.id_number), &dotdesc) & FOUND))
			inp->i_dotdot = dotdesc.id_parent;
	}
	/*
	 * We have the previously found old name (inp->i_parent) and the
	 * just found new name (idesc->id_number). We have five cases:
	 * 1)  ".." is missing - can remove either name, choose to delete
	 *     new one and let fsck create ".." pointing to old name.
	 * 2) Both new and old are in same directory, choose to delete
	 *    the new name and let fsck fix ".." if it is wrong.
	 * 3) ".." does not point to the new name, so delete it and let
	 *    fsck fix ".." to point to the old one if it is wrong.
	 * 4) ".." points to the old name only, so delete the new one.
	 * 5) ".." points to the new name only, so delete the old one.
	 *
	 * For cases 1-4 we eliminate the new name;
	 * for case 5 we eliminate the old name.
	 */
	if (inp->i_dotdot == 0 ||		    /* Case 1 */
	    idesc->id_number == inp->i_parent ||    /* Case 2 */
	    inp->i_dotdot != idesc->id_number ||    /* Case 3 */
	    inp->i_dotdot == inp->i_parent) {	    /* Case 4 */
		FUNC1(newname, idesc->id_number, idesc->id_number);
		if (FUNC10(newname, "/") != 0)
			FUNC8 (newname, "/");
		FUNC8(newname, idesc->id_dirp->d_name);
		FUNC1(oldname, inp->i_number, inp->i_number);
		FUNC6("%s IS AN EXTRANEOUS HARD LINK TO DIRECTORY %s",
		    newname, oldname);
		if (cursnapshot != 0) {
			/*
			 * We need to
			 *    setcwd(idesc->id_number);
			 *    unlink(idesc->id_dirp->d_name);
			 */
			cmd.value = idesc->id_number;
			if (FUNC13("vfs.ffs.setcwd", 0, 0,
			    &cmd, sizeof cmd) == -1) {
				FUNC5(" (IGNORED)\n");
				return (0);
			}
			cmd.value = (intptr_t)idesc->id_dirp->d_name;
			cmd.size = inp->i_number; /* verify same name */
			if (FUNC13("vfs.ffs.unlink", 0, 0,
			    &cmd, sizeof cmd) == -1) {
				FUNC5(" (UNLINK FAILED: %s)\n",
				    FUNC12(errno));
				return (0);
			}
			FUNC5(" (REMOVED)\n");
			return (0);
		}
		if (preen) {
			FUNC5(" (REMOVED)\n");
			return (1);
		}
		return (FUNC7("REMOVE"));
	}
	/*
	 * None of the first four cases above, so must be case (5).
	 * Eliminate the old name and make the new the name the parent.
	 */
	FUNC1(oldname, inp->i_parent, inp->i_number);
	FUNC1(newname, inp->i_number, inp->i_number);
	FUNC6("%s IS AN EXTRANEOUS HARD LINK TO DIRECTORY %s", oldname,
	    newname);
	if (cursnapshot != 0) {
		/*
		 * We need to
		 *    setcwd(inp->i_parent);
		 *    unlink(last component of oldname pathname);
		 */
		cmd.value = inp->i_parent;
		if (FUNC13("vfs.ffs.setcwd", 0, 0,
		    &cmd, sizeof cmd) == -1) {
			FUNC5(" (IGNORED)\n");
			return (0);
		}
		if ((cp = FUNC9(oldname, '/')) == NULL) {
			FUNC5(" (IGNORED)\n");
			return (0);
		}
		cmd.value = (intptr_t)(cp + 1);
		cmd.size = inp->i_number; /* verify same name */
		if (FUNC13("vfs.ffs.unlink", 0, 0,
		    &cmd, sizeof cmd) == -1) {
			FUNC5(" (UNLINK FAILED: %s)\n",
			    FUNC12(errno));
			return (0);
		}
		FUNC5(" (REMOVED)\n");
		inp->i_parent = idesc->id_number;  /* reparent to correct dir */
		return (0);
	}
	if (!preen && !FUNC7("REMOVE"))
		return (0);
	FUNC4(&dotdesc, 0, sizeof(struct inodesc));
	dotdesc.id_type = DATA;
	dotdesc.id_number = inp->i_parent; /* directory in which name appears */
	dotdesc.id_parent = inp->i_number; /* inode number in entry to delete */
	dotdesc.id_func = deleteentry;
	if ((FUNC0(FUNC2(dotdesc.id_number), &dotdesc) & FOUND) && preen)
		FUNC5(" (REMOVED)\n");
	inp->i_parent = idesc->id_number;  /* reparent to correct directory */
	FUNC3(inp->i_number)->ino_linkcnt++; /* name gone, return reference */
	return (0);
}