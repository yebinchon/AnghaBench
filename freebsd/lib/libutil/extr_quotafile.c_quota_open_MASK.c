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
struct stat {int /*<<< orphan*/  st_dev; } ;
struct quotafile {int fd; int quotatype; int wordsize; int accmode; int /*<<< orphan*/  qfname; int /*<<< orphan*/  fsname; int /*<<< orphan*/  dev; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
struct fstab {int /*<<< orphan*/  fs_vfstype; int /*<<< orphan*/  fs_file; } ;
struct dqhdr64 {void* dqh_reclen; void* dqh_hdrlen; void* dqh_version; int /*<<< orphan*/  dqh_magic; } ;
struct dqblk64 {int dummy; } ;
typedef  int /*<<< orphan*/  dqh ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int O_ACCMODE ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QUOTAGROUP ; 
 char* Q_DQHDR64_MAGIC ; 
 int Q_DQHDR64_VERSION ; 
 int /*<<< orphan*/  Q_GETQUOTASIZE ; 
 int FUNC1 (void*) ; 
 struct quotafile* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct quotafile*) ; 
 struct group* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fstab*,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dqhdr64*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (int,struct dqhdr64*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int,struct dqhdr64*,int) ; 

struct quotafile *
FUNC20(struct fstab *fs, int quotatype, int openflags)
{
	struct quotafile *qf;
	struct dqhdr64 dqh;
	struct group *grp;
	struct stat st;
	int qcmd, serrno = 0;
	int ufs;

	if ((qf = FUNC2(1, sizeof(*qf))) == NULL)
		return (NULL);
	qf->fd = -1;
	qf->quotatype = quotatype;
	FUNC17(qf->fsname, fs->fs_file, sizeof(qf->fsname));
	if (FUNC15(qf->fsname, &st) != 0)
		goto error;
	qf->dev = st.st_dev;
	qcmd = FUNC0(Q_GETQUOTASIZE, quotatype);
	ufs = FUNC16(fs->fs_vfstype, "ufs") == 0;
	/*
	 * On UFS, hasquota() fills in qf->qfname. But we only care about
	 * this for UFS.  So we need to call hasquota() for UFS, first.
	 */
	if (ufs) {
		serrno = FUNC8(fs, quotatype, qf->qfname,
		    sizeof(qf->qfname));
	}
	if (FUNC13(qf->fsname, qcmd, 0, &qf->wordsize) == 0)
		return (qf);
	if (!ufs) {
		errno = 0;
		goto error;
	} else if (serrno == 0) {
		errno = EOPNOTSUPP;
		goto error;
	}
	qf->accmode = openflags & O_ACCMODE;
	if ((qf->fd = FUNC12(qf->qfname, qf->accmode|O_CLOEXEC)) < 0 &&
	    (openflags & O_CREAT) != O_CREAT)
		goto error;
	/* File open worked, so process it */
	if (qf->fd != -1) {
		qf->wordsize = 32;
		switch (FUNC14(qf->fd, &dqh, sizeof(dqh))) {
		case -1:
			goto error;
		case sizeof(dqh):
			if (FUNC16(dqh.dqh_magic, Q_DQHDR64_MAGIC) != 0) {
				/* no magic, assume 32 bits */
				qf->wordsize = 32;
				return (qf);
			}
			if (FUNC1(dqh.dqh_version) != Q_DQHDR64_VERSION ||
			    FUNC1(dqh.dqh_hdrlen) != sizeof(struct dqhdr64) ||
			    FUNC1(dqh.dqh_reclen) != sizeof(struct dqblk64)) {
				/* correct magic, wrong version / lengths */
				errno = EINVAL;
				goto error;
			}
			qf->wordsize = 64;
			return (qf);
		default:
			qf->wordsize = 32;
			return (qf);
		}
		/* not reached */
	}
	/* open failed, but O_CREAT was specified, so create a new file */
	if ((qf->fd = FUNC12(qf->qfname, O_RDWR|O_CREAT|O_TRUNC|O_CLOEXEC, 0)) <
	    0)
		goto error;
	qf->wordsize = 64;
	FUNC11(&dqh, 0, sizeof(dqh));
	FUNC10(dqh.dqh_magic, Q_DQHDR64_MAGIC, sizeof(dqh.dqh_magic));
	dqh.dqh_version = FUNC9(Q_DQHDR64_VERSION);
	dqh.dqh_hdrlen = FUNC9(sizeof(struct dqhdr64));
	dqh.dqh_reclen = FUNC9(sizeof(struct dqblk64));
	if (FUNC19(qf->fd, &dqh, sizeof(dqh)) != sizeof(dqh)) {
		/* it was one we created ourselves */
		FUNC18(qf->qfname);
		goto error;
	}
	grp = FUNC7(QUOTAGROUP);
	FUNC5(qf->fd, 0, grp ? grp->gr_gid : 0);
	FUNC4(qf->fd, 0640);
	return (qf);
error:
	serrno = errno;
	/* did we have an open file? */
	if (qf->fd != -1)
		FUNC3(qf->fd);
	FUNC6(qf);
	errno = serrno;
	return (NULL);
}