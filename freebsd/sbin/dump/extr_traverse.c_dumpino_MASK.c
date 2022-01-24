#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * di_db; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_rdev; scalar_t__ di_birthnsec; int /*<<< orphan*/  di_birthtime; int /*<<< orphan*/  di_mtimensec; int /*<<< orphan*/  di_mtime; int /*<<< orphan*/  di_atimensec; int /*<<< orphan*/  di_atime; scalar_t__ di_extsize; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/ * di_db; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_rdev; int /*<<< orphan*/  di_mtimensec; int /*<<< orphan*/  di_mtime; int /*<<< orphan*/  di_atimensec; int /*<<< orphan*/  di_atime; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_mode; } ;
union dinode {TYPE_2__ dp2; TYPE_1__ dp1; } ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_8__ {scalar_t__ fs_magic; size_t fs_maxsymlinklen; size_t fs_bsize; size_t fs_frag; int /*<<< orphan*/  fs_fsize; } ;
struct TYPE_7__ {int c_count; int* c_addr; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_gid; int /*<<< orphan*/  c_uid; int /*<<< orphan*/  c_file_flags; int /*<<< orphan*/  c_rdev; scalar_t__ c_birthtimensec; void* c_birthtime; int /*<<< orphan*/  c_mtimensec; void* c_mtime; int /*<<< orphan*/  c_atimensec; void* c_atime; scalar_t__ c_extsize; int /*<<< orphan*/  c_size; int /*<<< orphan*/  c_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union dinode*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 size_t IFMT ; 
 size_t SF_SNAPSHOT ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 int TP_BSIZE ; 
 int /*<<< orphan*/  TS_BITS ; 
 int /*<<< orphan*/  TS_INODE ; 
 size_t UFS_NDADDR ; 
 int UFS_NIADDR ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (union dinode*) ; 
 int /*<<< orphan*/  di_flags ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  FUNC6 (union dinode*,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dumpinomap ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t) ; 
 scalar_t__ newtape ; 
 TYPE_4__* sblock ; 
 TYPE_3__ spcl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (union dinode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

void
FUNC16(union dinode *dp, ino_t ino)
{
	int ind_level, cnt, last, added;
	off_t size;
	char buf[TP_BSIZE];

	if (newtape) {
		newtape = 0;
		FUNC7(dumpinomap, TS_BITS, ino);
	}
	FUNC0(ino, dumpinomap);
	/*
	 * Zero out the size of a snapshot so that it will be dumped
	 * as a zero length file.
	 */
	if ((FUNC1(dp, di_flags) & SF_SNAPSHOT) != 0) {
		FUNC2(dp, di_size, 0);
		FUNC2(dp, di_flags, FUNC1(dp, di_flags) & ~SF_SNAPSHOT);
	}
	if (sblock->fs_magic == FS_UFS1_MAGIC) {
		spcl.c_mode = dp->dp1.di_mode;
		spcl.c_size = dp->dp1.di_size;
		spcl.c_extsize = 0;
		spcl.c_atime = FUNC3(dp->dp1.di_atime);
		spcl.c_atimensec = dp->dp1.di_atimensec;
		spcl.c_mtime = FUNC3(dp->dp1.di_mtime);
		spcl.c_mtimensec = dp->dp1.di_mtimensec;
		spcl.c_birthtime = 0;
		spcl.c_birthtimensec = 0;
		spcl.c_rdev = dp->dp1.di_rdev;
		spcl.c_file_flags = dp->dp1.di_flags;
		spcl.c_uid = dp->dp1.di_uid;
		spcl.c_gid = dp->dp1.di_gid;
	} else {
		spcl.c_mode = dp->dp2.di_mode;
		spcl.c_size = dp->dp2.di_size;
		spcl.c_extsize = dp->dp2.di_extsize;
		spcl.c_atime = FUNC4(dp->dp2.di_atime);
		spcl.c_atimensec = dp->dp2.di_atimensec;
		spcl.c_mtime = FUNC4(dp->dp2.di_mtime);
		spcl.c_mtimensec = dp->dp2.di_mtimensec;
		spcl.c_birthtime = FUNC4(dp->dp2.di_birthtime);
		spcl.c_birthtimensec = dp->dp2.di_birthnsec;
		spcl.c_rdev = dp->dp2.di_rdev;
		spcl.c_file_flags = dp->dp2.di_flags;
		spcl.c_uid = dp->dp2.di_uid;
		spcl.c_gid = dp->dp2.di_gid;
	}
	spcl.c_type = TS_INODE;
	spcl.c_count = 0;
	switch (FUNC1(dp, di_mode) & S_IFMT) {

	case 0:
		/*
		 * Freed inode.
		 */
		return;

	case S_IFLNK:
		/*
		 * Check for short symbolic link.
		 */
		if (FUNC1(dp, di_size) > 0 &&
		    FUNC1(dp, di_size) < sblock->fs_maxsymlinklen) {
			spcl.c_addr[0] = 1;
			spcl.c_count = 1;
			added = FUNC5(dp);
			FUNC14(ino);
			if (sblock->fs_magic == FS_UFS1_MAGIC)
				FUNC9(buf, (caddr_t)dp->dp1.di_db,
				    (u_long)FUNC1(dp, di_size));
			else
				FUNC9(buf, (caddr_t)dp->dp2.di_db,
				    (u_long)FUNC1(dp, di_size));
			buf[FUNC1(dp, di_size)] = '\0';
			FUNC15(buf, 0);
			FUNC13(dp, ino, added);
			return;
		}
		/* FALLTHROUGH */

	case S_IFDIR:
	case S_IFREG:
		if (FUNC1(dp, di_size) > 0)
			break;
		/* FALLTHROUGH */

	case S_IFIFO:
	case S_IFSOCK:
	case S_IFCHR:
	case S_IFBLK:
		added = FUNC5(dp);
		FUNC14(ino);
		FUNC13(dp, ino, added);
		return;

	default:
		FUNC10("Warning: undefined file type 0%o\n",
		    FUNC1(dp, di_mode) & IFMT);
		return;
	}
	if (FUNC1(dp, di_size) > UFS_NDADDR * sblock->fs_bsize) {
		cnt = UFS_NDADDR * sblock->fs_frag;
		last = 0;
	} else {
		cnt = FUNC8(FUNC1(dp, di_size), sblock->fs_fsize);
		last = 1;
	}
	if (sblock->fs_magic == FS_UFS1_MAGIC)
		FUNC11(&dp->dp1.di_db[0], cnt, ino);
	else
		FUNC12(dp, &dp->dp2.di_db[0], cnt, ino, last);
	if ((size = FUNC1(dp, di_size) - UFS_NDADDR * sblock->fs_bsize) <= 0)
		return;
	for (ind_level = 0; ind_level < UFS_NIADDR; ind_level++) {
		FUNC6(dp, ino, FUNC1(dp, di_ib[ind_level]), ind_level, &size);
		if (size <= 0)
			return;
	}
}