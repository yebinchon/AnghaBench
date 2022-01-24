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
struct statfs {int f_flags; char* f_mntfromname; char* f_mntonname; char* f_fstypename; } ;
struct fstab {int fs_freq; int fs_passno; } ;

/* Variables and functions */
 int MNT_RDONLY ; 
 char* FUNC0 (char*,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct fstab* FUNC3 (char*) ; 
 struct fstab* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

void
FUNC11(struct statfs *ent)
{
	struct fstab *fst;
	char *opts, *rw;
	int l;

	opts = NULL;
	/* flags2opts() doesn't return the "rw" option. */
	if ((ent->f_flags & MNT_RDONLY) != 0)
		rw = NULL;
	else
		rw = FUNC0(NULL, "rw");

	opts = FUNC1(ent->f_flags);
	opts = FUNC0(rw, opts);

	if (FUNC9(ent->f_mntfromname, "<below>", 7) == 0 ||
	    FUNC9(ent->f_mntfromname, "<above>", 7) == 0) {
		FUNC7(ent->f_mntfromname,
		    (FUNC10(ent->f_mntfromname, ":", 8) +1),
		    sizeof(ent->f_mntfromname));
	}

	l = FUNC8(ent->f_mntfromname);
	FUNC5("%s%s%s%s", ent->f_mntfromname,
	    l < 8 ? "\t" : "",
	    l < 16 ? "\t" : "",
	    l < 24 ? "\t" : " ");
	l = FUNC8(ent->f_mntonname);
	FUNC5("%s%s%s%s", ent->f_mntonname,
	    l < 8 ? "\t" : "",
	    l < 16 ? "\t" : "",
	    l < 24 ? "\t" : " ");
	FUNC5("%s\t", ent->f_fstypename);
	l = FUNC8(opts);
	FUNC5("%s%s", opts,
	    l < 8 ? "\t" : " ");
	FUNC2(opts);

	if ((fst = FUNC4(ent->f_mntfromname)))
		FUNC5("\t%u %u\n", fst->fs_freq, fst->fs_passno);
	else if ((fst = FUNC3(ent->f_mntonname)))
		FUNC5("\t%u %u\n", fst->fs_freq, fst->fs_passno);
	else if (FUNC6(ent->f_fstypename, "ufs") == 0) {
		if (FUNC6(ent->f_mntonname, "/") == 0)
			FUNC5("\t1 1\n");
		else
			FUNC5("\t2 2\n");
	} else
		FUNC5("\t0 0\n");
}