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
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
struct timespec {int dummy; } ;
struct fsck_cmd {int dummy; } ;
struct bufarea {int dummy; } ;

/* Variables and functions */
 int BT_NUMBUFTYPES ; 
 int BUFSIZ ; 
 int MIBSIZE ; 
 int /*<<< orphan*/ * adjblkcnt ; 
 int /*<<< orphan*/ * adjnbfree ; 
 int /*<<< orphan*/ * adjndir ; 
 int /*<<< orphan*/ * adjnffree ; 
 int /*<<< orphan*/ * adjnifree ; 
 int /*<<< orphan*/ * adjnumclusters ; 
 int /*<<< orphan*/ * adjrefcnt ; 
 scalar_t__ bkgrdsumadj ; 
 int /*<<< orphan*/ * blockmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * cdevname ; 
 int /*<<< orphan*/  cmd ; 
 scalar_t__ countdirs ; 
 scalar_t__ cursnapshot ; 
 scalar_t__ dev_bsize ; 
 scalar_t__ dirhash ; 
 int /*<<< orphan*/ * freeblks ; 
 int /*<<< orphan*/ * freedirs ; 
 int /*<<< orphan*/ * freefiles ; 
 scalar_t__ fsmodified ; 
 scalar_t__ fsreadfd ; 
 scalar_t__ fswritefd ; 
 scalar_t__ got_sigalarm ; 
 scalar_t__ got_siginfo ; 
 scalar_t__ havesb ; 
 scalar_t__ inplast ; 
 scalar_t__ lfdir ; 
 int lfmode ; 
 char* lfname ; 
 scalar_t__ listmax ; 
 scalar_t__ maxfsblock ; 
 scalar_t__ maxino ; 
 scalar_t__ n_blks ; 
 scalar_t__ n_files ; 
 scalar_t__ numdirs ; 
 int /*<<< orphan*/ * pbp ; 
 int /*<<< orphan*/ * pdirbp ; 
 int /*<<< orphan*/ * readcnt ; 
 int /*<<< orphan*/ * readtime ; 
 scalar_t__ real_dev_bsize ; 
 scalar_t__ rerun ; 
 scalar_t__ resolved ; 
 scalar_t__ returntosingle ; 
 int /*<<< orphan*/  sblk ; 
 scalar_t__ secsize ; 
 int /*<<< orphan*/ * setsize ; 
 int /*<<< orphan*/ * snapname ; 
 int /*<<< orphan*/  startprog ; 
 int /*<<< orphan*/ * totalreadcnt ; 
 int /*<<< orphan*/ * totalreadtime ; 
 int /*<<< orphan*/  ufs1_zino ; 
 int /*<<< orphan*/  ufs2_zino ; 
 scalar_t__ usedsoftdep ; 

void
FUNC1(void)
{
	FUNC0(readcnt, sizeof(long) * BT_NUMBUFTYPES);
	FUNC0(totalreadcnt, sizeof(long) * BT_NUMBUFTYPES);
	FUNC0(readtime, sizeof(struct timespec) * BT_NUMBUFTYPES);
	FUNC0(totalreadtime, sizeof(struct timespec) * BT_NUMBUFTYPES);
	FUNC0(&startprog, sizeof(struct timespec));
	FUNC0(&sblk, sizeof(struct bufarea));
	pdirbp = NULL;
	pbp = NULL;
	cursnapshot = 0;
	listmax = numdirs = dirhash = inplast = 0;
	countdirs = 0;
	FUNC0(adjrefcnt, sizeof(int) * MIBSIZE);
	FUNC0(adjblkcnt, sizeof(int) * MIBSIZE);
	FUNC0(setsize, sizeof(int) * MIBSIZE);
	FUNC0(adjndir, sizeof(int) * MIBSIZE);
	FUNC0(adjnbfree, sizeof(int) * MIBSIZE);
	FUNC0(adjnifree, sizeof(int) * MIBSIZE);
	FUNC0(adjnffree, sizeof(int) * MIBSIZE);
	FUNC0(adjnumclusters, sizeof(int) * MIBSIZE);
	FUNC0(freefiles, sizeof(int) * MIBSIZE);
	FUNC0(freedirs, sizeof(int) * MIBSIZE);
	FUNC0(freeblks, sizeof(int) * MIBSIZE);
	FUNC0(&cmd, sizeof(struct fsck_cmd));
	FUNC0(snapname, sizeof(char) * BUFSIZ);
	cdevname = NULL;
	dev_bsize = 0;
	secsize = 0;
	real_dev_bsize = 0;	
	bkgrdsumadj = 0;
	usedsoftdep = 0;
	rerun = 0;
	returntosingle = 0;
	resolved = 0;
	havesb = 0;
	fsmodified = 0;
	fsreadfd = 0;
	fswritefd = 0;
	maxfsblock = 0;
	blockmap = NULL;
	maxino = 0;
	lfdir = 0;
	lfname = "lost+found";
	lfmode = 0700;
	n_blks = 0;
	n_files = 0;
	got_siginfo = 0;
	got_sigalarm = 0;
	FUNC0(&ufs1_zino, sizeof(struct ufs1_dinode));
	FUNC0(&ufs2_zino, sizeof(struct ufs2_dinode));
}