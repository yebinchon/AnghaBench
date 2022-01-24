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
typedef  char* uintmax_t ;
struct entry {int e_type; int e_flags; struct entry* e_next; int /*<<< orphan*/  e_ino; struct entry* e_links; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int EXTRACT ; 
 long FAIL ; 
 long GOOD ; 
#define  INOFND 131 
 int KEEP ; 
 int LEAF ; 
 int LINK ; 
#define  MODECHG 130 
#define  NAMEFND 129 
 int NEW ; 
 int NODE ; 
#define  ONTAPE 128 
 int TMPNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct entry* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  dumpmap ; 
 int /*<<< orphan*/  FUNC5 (struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct entry*) ; 
 char* FUNC8 (int) ; 
 struct entry* FUNC9 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct entry*,char*) ; 
 char* FUNC13 (struct entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct entry*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct entry*) ; 
 struct entry* removelist ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

long
FUNC18(char *name, ino_t ino, int type)
{
	struct entry *ep, *np, *ip;
	long descend = GOOD;
	int lookuptype = 0;
	int key = 0;
		/* key values */
#		define ONTAPE	0x1	/* inode is on the tape */
#		define INOFND	0x2	/* inode already exists */
#		define NAMEFND	0x4	/* name already exists */
#		define MODECHG	0x8	/* mode of inode changed */

	/*
	 * This routine is called once for each element in the
	 * directory hierarchy, with a full path name.
	 * The "type" value is incorrectly specified as LEAF for
	 * directories that are not on the dump tape.
	 *
	 * Check to see if the file is on the tape.
	 */
	if (FUNC0(ino, dumpmap))
		key |= ONTAPE;
	/*
	 * Check to see if the name exists, and if the name is a link.
	 */
	np = FUNC10(name);
	if (np != NULL) {
		key |= NAMEFND;
		ip = FUNC9(np->e_ino);
		if (ip == NULL)
			FUNC15("corrupted symbol table\n");
		if (ip != np)
			lookuptype = LINK;
	}
	/*
	 * Check to see if the inode exists, and if one of its links
	 * corresponds to the name (if one was found).
	 */
	ip = FUNC9(ino);
	if (ip != NULL) {
		key |= INOFND;
		for (ep = ip->e_links; ep != NULL; ep = ep->e_links) {
			if (ep == np) {
				ip = ep;
				break;
			}
		}
	}
	/*
	 * If both a name and an inode are found, but they do not
	 * correspond to the same file, then both the inode that has
	 * been found and the inode corresponding to the name that
	 * has been found need to be renamed. The current pathname
	 * is the new name for the inode that has been found. Since
	 * all files to be deleted have already been removed, the
	 * named file is either a now unneeded link, or it must live
	 * under a new name in this dump level. If it is a link, it
	 * can be removed. If it is not a link, it is given a
	 * temporary name in anticipation that it will be renamed
	 * when it is later found by inode number.
	 */
	if (((key & (INOFND|NAMEFND)) == (INOFND|NAMEFND)) && ip != np) {
		if (lookuptype == LINK) {
			FUNC16(np);
			FUNC7(np);
		} else {
			FUNC4(stdout, "name/inode conflict, mktempname %s\n",
				FUNC13(np));
			FUNC11(np);
		}
		np = NULL;
		key &= ~NAMEFND;
	}
	if ((key & ONTAPE) &&
	  (((key & INOFND) && ip->e_type != type) ||
	   ((key & NAMEFND) && np->e_type != type)))
		key |= MODECHG;

	/*
	 * Decide on the disposition of the file based on its flags.
	 * Note that we have already handled the case in which
	 * a name and inode are found that correspond to different files.
	 * Thus if both NAMEFND and INOFND are set then ip == np.
	 */
	switch (key) {

	/*
	 * A previously existing file has been found.
	 * Mark it as KEEP so that other links to the inode can be
	 * detected, and so that it will not be reclaimed by the search
	 * for unreferenced names.
	 */
	case INOFND|NAMEFND:
		ip->e_flags |= KEEP;
		FUNC4(stdout, "[%s] %s: %s\n", FUNC8(key), name,
			FUNC5(ip));
		break;

	/*
	 * A file on the tape has a name which is the same as a name
	 * corresponding to a different file in the previous dump.
	 * Since all files to be deleted have already been removed,
	 * this file is either a now unneeded link, or it must live
	 * under a new name in this dump level. If it is a link, it
	 * can simply be removed. If it is not a link, it is given a
	 * temporary name in anticipation that it will be renamed
	 * when it is later found by inode number (see INOFND case
	 * below). The entry is then treated as a new file.
	 */
	case ONTAPE|NAMEFND:
	case ONTAPE|NAMEFND|MODECHG:
		if (lookuptype == LINK) {
			FUNC16(np);
			FUNC7(np);
		} else {
			FUNC11(np);
		}
		/* FALLTHROUGH */

	/*
	 * A previously non-existent file.
	 * Add it to the file system, and request its extraction.
	 * If it is a directory, create it immediately.
	 * (Since the name is unused there can be no conflict)
	 */
	case ONTAPE:
		ep = FUNC1(name, ino, type);
		if (type == NODE)
			FUNC14(ep);
		ep->e_flags |= NEW|KEEP;
		FUNC4(stdout, "[%s] %s: %s\n", FUNC8(key), name,
			FUNC5(ep));
		break;

	/*
	 * A file with the same inode number, but a different
	 * name has been found. If the other name has not already
	 * been found (indicated by the KEEP flag, see above) then
	 * this must be a new name for the file, and it is renamed.
	 * If the other name has been found then this must be a
	 * link to the file. Hard links to directories are not
	 * permitted, and are either deleted or converted to
	 * symbolic links. Finally, if the file is on the tape,
	 * a request is made to extract it.
	 */
	case ONTAPE|INOFND:
		if (type == LEAF && (ip->e_flags & KEEP) == 0)
			ip->e_flags |= EXTRACT;
		/* FALLTHROUGH */
	case INOFND:
		if ((ip->e_flags & KEEP) == 0) {
			FUNC17(FUNC13(ip), name);
			FUNC12(ip, name);
			ip->e_flags |= KEEP;
			FUNC4(stdout, "[%s] %s: %s\n", FUNC8(key), name,
				FUNC5(ip));
			break;
		}
		if (ip->e_type == NODE) {
			descend = FAIL;
			FUNC6(stderr,
				"deleted hard link %s to directory %s\n",
				name, FUNC13(ip));
			break;
		}
		ep = FUNC1(name, ino, type|LINK);
		ep->e_flags |= NEW;
		FUNC4(stdout, "[%s] %s: %s|LINK\n", FUNC8(key), name,
			FUNC5(ep));
		break;

	/*
	 * A previously known file which is to be updated. If it is a link,
	 * then all names referring to the previous file must be removed
	 * so that the subset of them that remain can be recreated.
	 */
	case ONTAPE|INOFND|NAMEFND:
		if (lookuptype == LINK) {
			FUNC16(np);
			FUNC7(np);
			ep = FUNC1(name, ino, type|LINK);
			if (type == NODE)
			        FUNC14(ep);
			ep->e_flags |= NEW|KEEP;
			FUNC4(stdout, "[%s] %s: %s|LINK\n", FUNC8(key), name,
				FUNC5(ep));
			break;
		}
		if (type == LEAF && lookuptype != LINK)
			np->e_flags |= EXTRACT;
		np->e_flags |= KEEP;
		FUNC4(stdout, "[%s] %s: %s\n", FUNC8(key), name,
			FUNC5(np));
		break;

	/*
	 * An inode is being reused in a completely different way.
	 * Normally an extract can simply do an "unlink" followed
	 * by a "creat". Here we must do effectively the same
	 * thing. The complications arise because we cannot really
	 * delete a directory since it may still contain files
	 * that we need to rename, so we delete it from the symbol
	 * table, and put it on the list to be deleted eventually.
	 * Conversely if a directory is to be created, it must be
	 * done immediately, rather than waiting until the
	 * extraction phase.
	 */
	case ONTAPE|INOFND|MODECHG:
	case ONTAPE|INOFND|NAMEFND|MODECHG:
		if (ip->e_flags & KEEP) {
			FUNC2(ip, "cannot KEEP and change modes");
			break;
		}
		if (ip->e_type == LEAF) {
			/* changing from leaf to node */
			for (ip = FUNC9(ino); ip != NULL; ip = ip->e_links) {
				if (ip->e_type != LEAF)
					FUNC2(ip, "NODE and LEAF links to same inode");
				FUNC16(ip);
				FUNC7(ip);
			}
			ip = FUNC1(name, ino, type);
			FUNC14(ip);
		} else {
			/* changing from node to leaf */
			if ((ip->e_flags & TMPNAME) == 0)
				FUNC11(ip);
			FUNC3(ip->e_ino);
			ip->e_next = removelist;
			removelist = ip;
			ip = FUNC1(name, ino, type);
		}
		ip->e_flags |= NEW|KEEP;
		FUNC4(stdout, "[%s] %s: %s\n", FUNC8(key), name,
			FUNC5(ip));
		break;

	/*
	 * A hard link to a directory that has been removed.
	 * Ignore it.
	 */
	case NAMEFND:
		FUNC4(stdout, "[%s] %s: Extraneous name\n", FUNC8(key),
			name);
		descend = FAIL;
		break;

	/*
	 * If we find a directory entry for a file that is not on
	 * the tape, then we must have found a file that was created
	 * while the dump was in progress. Since we have no contents
	 * for it, we discard the name knowing that it will be on the
	 * next incremental tape.
	 */
	case 0:
		FUNC6(stderr, "%s: (inode %s) not found on tape\n",
		    name, (uintmax_t)ino);
		break;

	/*
	 * If any of these arise, something is grievously wrong with
	 * the current state of the symbol table.
	 */
	case INOFND|NAMEFND|MODECHG:
	case NAMEFND|MODECHG:
	case INOFND|MODECHG:
		FUNC6(stderr, "[%s] %s: inconsistent state\n", FUNC8(key),
			name);
		break;

	/*
	 * These states "cannot" arise for any state of the symbol table.
	 */
	case ONTAPE|MODECHG:
	case MODECHG:
	default:
		FUNC15("[%s] %s: impossible state\n", FUNC8(key), name);
		break;
	}
	return (descend);
}