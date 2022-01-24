#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union u_spcl {int dummy; } u_spcl ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct stat {int st_blksize; } ;
struct TYPE_10__ {void* action; } ;
struct TYPE_7__ {scalar_t__ c_checksum; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_magic; } ;
struct TYPE_9__ {TYPE_1__ s_spcl; } ;
struct TYPE_8__ {int c_volume; scalar_t__ c_type; int c_count; int /*<<< orphan*/  c_date; int /*<<< orphan*/  c_ddate; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FS_UFS2_MAGIC ; 
 int MAXBSIZE ; 
 int NBBY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int TP_BSIZE ; 
 scalar_t__ TS_BITS ; 
 scalar_t__ TS_CLRI ; 
 int /*<<< orphan*/  TS_END ; 
 int /*<<< orphan*/  UFS_WINO ; 
 void* USING ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bflag ; 
 int /*<<< orphan*/  blksread ; 
 char* FUNC3 (unsigned int,unsigned int) ; 
 char command ; 
 TYPE_6__ curfile ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* dumpdate ; 
 char* dumpmap ; 
 void* dumptime ; 
 TYPE_5__ endoftapemark ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int fssize ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ host ; 
 scalar_t__ FUNC12 (int,int) ; 
 char* magtape ; 
 char* map ; 
 int maxino ; 
 int mt ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ pipecmdin ; 
 scalar_t__ pipein ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 scalar_t__ popenfp ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (char*,char*,int) ; 
 TYPE_2__ spcl ; 
 scalar_t__ FUNC21 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC22 (int /*<<< orphan*/ ) ; 
 int tapesread ; 
 char* usedinomap ; 
 scalar_t__ vflag ; 
 int volno ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xtrmap ; 
 int /*<<< orphan*/  xtrmapskip ; 

void
FUNC24(void)
{
	int i, j, *ip;
	struct stat stbuf;

	FUNC23(stdout, "Verify tape and initialize maps\n");
	if (pipecmdin) {
		if (FUNC20("RESTORE_VOLUME", "1", 1) == -1) {
			FUNC9(stderr, "Cannot set $RESTORE_VOLUME: %s\n",
			    FUNC22(errno));
			FUNC4(1);
		}
		popenfp = FUNC15(magtape, "r");
		mt = popenfp ? FUNC6(popenfp) : -1;
	} else
#ifdef RRESTORE
	if (host)
		mt = rmtopen(magtape, 0);
	else
#endif
	if (pipein)
		mt = 0;
	else
		mt = FUNC13(magtape, O_RDONLY, 0);
	if (mt < 0) {
		FUNC9(stderr, "%s: %s\n", magtape, FUNC22(errno));
		FUNC4(1);
	}
	volno = 1;
	FUNC19();
	FUNC0();
	if (!pipein && !pipecmdin && !bflag)
		FUNC8();
	if (FUNC11(&spcl) == FAIL) {
		FUNC9(stderr, "Tape is not a dump tape\n");
		FUNC4(1);
	}
	if (pipein) {
		endoftapemark.s_spcl.c_magic = FS_UFS2_MAGIC;
		endoftapemark.s_spcl.c_type = TS_END;
		ip = (int *)&endoftapemark;
		j = sizeof(union u_spcl) / sizeof(int);
		i = 0;
		do
			i += *ip++;
		while (--j);
		endoftapemark.s_spcl.c_checksum = CHECKSUM - i;
	}
	if (vflag || command == 't')
		FUNC16();
	dumptime = FUNC2(spcl.c_ddate);
	dumpdate = FUNC2(spcl.c_date);
	if (FUNC21(".", &stbuf) < 0) {
		FUNC9(stderr, "cannot stat .: %s\n", FUNC22(errno));
		FUNC4(1);
	}
	if (stbuf.st_blksize > 0 && stbuf.st_blksize < TP_BSIZE )
		fssize = TP_BSIZE;
	if (stbuf.st_blksize >= TP_BSIZE && stbuf.st_blksize <= MAXBSIZE)
		fssize = stbuf.st_blksize;
	if (((TP_BSIZE - 1) & stbuf.st_blksize) != 0) {
		FUNC9(stderr, "Warning: filesystem with non-multiple-of-%d "
		    "blocksize (%d);\n", TP_BSIZE, stbuf.st_blksize);
		fssize = FUNC18(fssize, TP_BSIZE);
		FUNC9(stderr, "\twriting using blocksize %d\n", fssize);
	}
	if (spcl.c_volume != 1) {
		FUNC9(stderr, "Tape is not volume 1 of the dump\n");
		FUNC4(1);
	}
	if (FUNC11(&spcl) == FAIL) {
		FUNC5(stdout, "header read failed at %ld blocks\n", blksread);
		FUNC14("no header after volume mark!\n");
	}
	FUNC7(&spcl);
	if (spcl.c_type != TS_CLRI) {
		FUNC9(stderr, "Cannot find file removal list\n");
		FUNC4(1);
	}
	maxino = (spcl.c_count * TP_BSIZE * NBBY) + 1;
	FUNC5(stdout, "maxino = %ju\n", (uintmax_t)maxino);
	map = FUNC3((unsigned)1, (unsigned)FUNC12(maxino, NBBY));
	if (map == NULL)
		FUNC14("no memory for active inode map\n");
	usedinomap = map;
	curfile.action = USING;
	FUNC10(xtrmap, xtrmapskip, xtrmapskip);
	if (spcl.c_type != TS_BITS) {
		FUNC9(stderr, "Cannot find file dump list\n");
		FUNC4(1);
	}
	map = FUNC3((unsigned)1, (unsigned)FUNC12(maxino, NBBY));
	if (map == (char *)NULL)
		FUNC14("no memory for file dump list\n");
	dumpmap = map;
	curfile.action = USING;
	FUNC10(xtrmap, xtrmapskip, xtrmapskip);
	/*
	 * If there may be whiteout entries on the tape, pretend that the
	 * whiteout inode exists, so that the whiteout entries can be
	 * extracted.
	 */
	FUNC1(UFS_WINO, dumpmap);
	/* 'r' restores don't call getvol() for tape 1, so mark it as read. */
	if (command == 'r')
		tapesread = 1;
}