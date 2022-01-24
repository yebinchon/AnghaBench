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
typedef  int /*<<< orphan*/  uintmax_t ;
struct inoinfo {scalar_t__ i_parent; scalar_t__ i_dotdot; } ;
struct inodesc {int id_entryno; scalar_t__ id_number; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; char* d_name; scalar_t__ d_type; int d_namlen; int d_reclen; } ;
typedef  void* ino_t ;
typedef  scalar_t__ dirp ;
struct TYPE_5__ {int ino_linkcnt; int ino_state; scalar_t__ ino_type; } ;
struct TYPE_4__ {scalar_t__ value; } ;

/* Variables and functions */
 int ALTERED ; 
#define  DCLEAR 135 
#define  DFOUND 134 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct direct*) ; 
#define  DSTATE 133 
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_WHT ; 
#define  DZLINK 132 
 int /*<<< orphan*/  EEXIT ; 
#define  FCLEAR 131 
#define  FSTATE 130 
#define  FZLINK 129 
 int IFDIR ; 
 int IFMT ; 
 int KEEPON ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ UFS_WINO ; 
#define  USTATE 128 
 TYPE_1__ cmd ; 
 int /*<<< orphan*/  cursnapshot ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,char const*) ; 
 int FUNC5 (struct inoinfo*,struct inodesc*) ; 
 struct inoinfo* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 
 union dinode* FUNC8 (scalar_t__) ; 
 TYPE_2__* FUNC9 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  FUNC10 (struct direct*,struct direct*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct direct*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  preen ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  usedsoftdep ; 

__attribute__((used)) static int
FUNC21(struct inodesc *idesc)
{
	struct direct *dirp = idesc->id_dirp;
	char dirname[MAXPATHLEN + 1];
	struct inoinfo *inp;
	int n, entrysize, ret = 0;
	union dinode *dp;
	const char *errmsg;
	struct direct proto;

	/*
	 * check for "."
	 */
	if (dirp->d_ino > maxino)
		goto chk2;
	if (idesc->id_entryno != 0)
		goto chk1;
	if (dirp->d_ino != 0 && FUNC17(dirp->d_name, ".") == 0) {
		if (dirp->d_ino != idesc->id_number) {
			FUNC2(idesc->id_number, "BAD INODE NUMBER FOR '.'");
			dirp->d_ino = idesc->id_number;
			if (FUNC15("FIX") == 1)
				ret |= ALTERED;
		}
		if (dirp->d_type != DT_DIR) {
			FUNC2(idesc->id_number, "BAD TYPE VALUE FOR '.'");
			dirp->d_type = DT_DIR;
			if (FUNC15("FIX") == 1)
				ret |= ALTERED;
		}
		goto chk1;
	}
	FUNC2(idesc->id_number, "MISSING '.'");
	proto.d_ino = idesc->id_number;
	proto.d_type = DT_DIR;
	proto.d_namlen = 1;
	(void)FUNC18(proto.d_name, ".");
	entrysize = FUNC1(0, &proto);
	if (dirp->d_ino != 0 && FUNC17(dirp->d_name, "..") != 0) {
		FUNC12("CANNOT FIX, FIRST ENTRY IN DIRECTORY CONTAINS %s\n",
			dirp->d_name);
	} else if (dirp->d_reclen < entrysize) {
		FUNC12("CANNOT FIX, INSUFFICIENT SPACE TO ADD '.'\n");
	} else if (dirp->d_reclen < 2 * entrysize) {
		proto.d_reclen = dirp->d_reclen;
		FUNC10(dirp, &proto, (size_t)entrysize);
		if (FUNC15("FIX") == 1)
			ret |= ALTERED;
	} else {
		n = dirp->d_reclen - entrysize;
		proto.d_reclen = entrysize;
		FUNC10(dirp, &proto, (size_t)entrysize);
		idesc->id_entryno++;
		FUNC9(dirp->d_ino)->ino_linkcnt--;
		dirp = (struct direct *)((char *)(dirp) + entrysize);
		FUNC11(dirp, 0, (size_t)n);
		dirp->d_reclen = n;
		if (FUNC15("FIX") == 1)
			ret |= ALTERED;
	}
chk1:
	if (idesc->id_entryno > 1)
		goto chk2;
	inp = FUNC6(idesc->id_number);
	proto.d_ino = inp->i_parent;
	proto.d_type = DT_DIR;
	proto.d_namlen = 2;
	(void)FUNC18(proto.d_name, "..");
	entrysize = FUNC1(0, &proto);
	if (idesc->id_entryno == 0) {
		n = FUNC1(0, dirp);
		if (dirp->d_reclen < n + entrysize)
			goto chk2;
		proto.d_reclen = dirp->d_reclen - n;
		dirp->d_reclen = n;
		idesc->id_entryno++;
		FUNC9(dirp->d_ino)->ino_linkcnt--;
		dirp = (struct direct *)((char *)(dirp) + n);
		FUNC11(dirp, 0, (size_t)proto.d_reclen);
		dirp->d_reclen = proto.d_reclen;
	}
	if (dirp->d_ino != 0 && FUNC17(dirp->d_name, "..") == 0) {
		inp->i_dotdot = dirp->d_ino;
		if (dirp->d_type != DT_DIR) {
			FUNC2(idesc->id_number, "BAD TYPE VALUE FOR '..'");
			dirp->d_type = DT_DIR;
			if (FUNC15("FIX") == 1)
				ret |= ALTERED;
		}
		goto chk2;
	}
	if (dirp->d_ino != 0 && FUNC17(dirp->d_name, ".") != 0) {
		FUNC4(inp->i_parent, idesc->id_number, "MISSING '..'");
		FUNC12("CANNOT FIX, SECOND ENTRY IN DIRECTORY CONTAINS %s\n",
			dirp->d_name);
		inp->i_dotdot = (ino_t)-1;
	} else if (dirp->d_reclen < entrysize) {
		FUNC4(inp->i_parent, idesc->id_number, "MISSING '..'");
		FUNC12("CANNOT FIX, INSUFFICIENT SPACE TO ADD '..'\n");
		inp->i_dotdot = (ino_t)-1;
	} else if (inp->i_parent != 0) {
		/*
		 * We know the parent, so fix now.
		 */
		inp->i_dotdot = inp->i_parent;
		FUNC4(inp->i_parent, idesc->id_number, "MISSING '..'");
		proto.d_reclen = dirp->d_reclen;
		FUNC10(dirp, &proto, (size_t)entrysize);
		if (FUNC15("FIX") == 1)
			ret |= ALTERED;
	}
	idesc->id_entryno++;
	if (dirp->d_ino != 0)
		FUNC9(dirp->d_ino)->ino_linkcnt--;
	return (ret|KEEPON);
chk2:
	if (dirp->d_ino == 0)
		return (ret|KEEPON);
	if (dirp->d_namlen <= 2 &&
	    dirp->d_name[0] == '.' &&
	    idesc->id_entryno >= 2) {
		if (dirp->d_namlen == 1) {
			FUNC2(idesc->id_number, "EXTRA '.' ENTRY");
			dirp->d_ino = 0;
			if (FUNC15("FIX") == 1)
				ret |= ALTERED;
			return (KEEPON | ret);
		}
		if (dirp->d_name[1] == '.') {
			FUNC2(idesc->id_number, "EXTRA '..' ENTRY");
			dirp->d_ino = 0;
			if (FUNC15("FIX") == 1)
				ret |= ALTERED;
			return (KEEPON | ret);
		}
	}
	idesc->id_entryno++;
	n = 0;
	if (dirp->d_ino > maxino) {
		FUNC4(idesc->id_number, dirp->d_ino, "I OUT OF RANGE");
		n = FUNC15("REMOVE");
	} else if (((dirp->d_ino == UFS_WINO && dirp->d_type != DT_WHT) ||
		    (dirp->d_ino != UFS_WINO && dirp->d_type == DT_WHT))) {
		FUNC4(idesc->id_number, dirp->d_ino, "BAD WHITEOUT ENTRY");
		dirp->d_ino = UFS_WINO;
		dirp->d_type = DT_WHT;
		if (FUNC15("FIX") == 1)
			ret |= ALTERED;
	} else {
again:
		switch (FUNC9(dirp->d_ino)->ino_state) {
		case USTATE:
			if (idesc->id_entryno <= 2)
				break;
			FUNC4(idesc->id_number, dirp->d_ino, "UNALLOCATED");
			n = FUNC15("REMOVE");
			break;

		case DCLEAR:
		case FCLEAR:
			if (idesc->id_entryno <= 2)
				break;
			if (FUNC9(dirp->d_ino)->ino_state == FCLEAR)
				errmsg = "DUP/BAD";
			else if (!preen && !usedsoftdep)
				errmsg = "ZERO LENGTH DIRECTORY";
			else if (cursnapshot == 0) {
				n = 1;
				break;
			} else {
				FUNC7(dirname, idesc->id_number,
				    dirp->d_ino);
				FUNC14("ZERO LENGTH DIRECTORY %s I=%ju",
				    dirname, (uintmax_t)dirp->d_ino);
				/*
				 * We need to:
				 *    setcwd(idesc->id_parent);
				 *    rmdir(dirp->d_name);
				 */
				cmd.value = idesc->id_number;
				if (FUNC20("vfs.ffs.setcwd", 0, 0,
				    &cmd, sizeof cmd) == -1) {
					/* kernel lacks support */
					FUNC13(" (IGNORED)\n");
					n = 1;
					break;
				}
				if (FUNC16(dirp->d_name) == -1) {
					FUNC13(" (REMOVAL FAILED: %s)\n",
					    FUNC19(errno));
					n = 1;
					break;
				}
				/* ".." reference to parent is removed */
				FUNC9(idesc->id_number)->ino_linkcnt--;
				FUNC13(" (REMOVED)\n");
				break;
			}
			FUNC4(idesc->id_number, dirp->d_ino, errmsg);
			if ((n = FUNC15("REMOVE")) == 1)
				break;
			dp = FUNC8(dirp->d_ino);
			FUNC9(dirp->d_ino)->ino_state =
			   (FUNC0(dp, di_mode) & IFMT) == IFDIR ? DSTATE : FSTATE;
			FUNC9(dirp->d_ino)->ino_linkcnt = FUNC0(dp, di_nlink);
			goto again;

		case DSTATE:
		case DZLINK:
			if (FUNC9(idesc->id_number)->ino_state == DFOUND)
				FUNC9(dirp->d_ino)->ino_state = DFOUND;
			/* FALLTHROUGH */

		case DFOUND:
			inp = FUNC6(dirp->d_ino);
			if (idesc->id_entryno > 2) {
				if (inp->i_parent == 0)
					inp->i_parent = idesc->id_number;
				else if ((n = FUNC5(inp, idesc)) == 1)
					break;
			}
			/* FALLTHROUGH */

		case FSTATE:
		case FZLINK:
			if (dirp->d_type != FUNC9(dirp->d_ino)->ino_type) {
				FUNC4(idesc->id_number, dirp->d_ino,
				    "BAD TYPE VALUE");
				dirp->d_type = FUNC9(dirp->d_ino)->ino_type;
				if (FUNC15("FIX") == 1)
					ret |= ALTERED;
			}
			FUNC9(dirp->d_ino)->ino_linkcnt--;
			break;

		default:
			FUNC3(EEXIT, "BAD STATE %d FOR INODE I=%ju",
			    FUNC9(dirp->d_ino)->ino_state,
			    (uintmax_t)dirp->d_ino);
		}
	}
	if (n == 0)
		return (ret|KEEPON);
	dirp->d_ino = 0;
	return (ret|KEEPON|ALTERED);
}