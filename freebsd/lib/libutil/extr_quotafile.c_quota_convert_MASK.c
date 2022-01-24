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
struct quotafile {int accmode; int fd; int wordsize; char* qfname; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
struct dqhdr64 {void* dqh_reclen; void* dqh_hdrlen; void* dqh_version; int /*<<< orphan*/  dqh_magic; } ;
struct dqblk64 {int dummy; } ;
struct dqblk {int dummy; } ;
typedef  int /*<<< orphan*/  dqh ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ MAXPATHLEN ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  QUOTAGROUP ; 
 int /*<<< orphan*/  Q_DQHDR64_MAGIC ; 
 int Q_DQHDR64_VERSION ; 
 struct quotafile* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct quotafile*) ; 
 struct group* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dqhdr64*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct quotafile*) ; 
 int FUNC10 (struct quotafile*) ; 
 scalar_t__ FUNC11 (struct quotafile*,struct dqblk*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct quotafile*,struct dqblk*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct quotafile*,struct dqblk*,int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,char*,char*,int) ; 
 int FUNC16 (int,struct dqhdr64*,int) ; 

int
FUNC17(struct quotafile *qf, int wordsize)
{
	struct quotafile *newqf;
	struct dqhdr64 dqh;
	struct dqblk dqblk;
	struct group *grp;
	int serrno, maxid, id, fd;

	/*
	 * Quotas must not be active and quotafile must be open
	 * for reading and writing.
	 */
	if ((qf->accmode & O_RDWR) != O_RDWR || qf->fd == -1) {
		errno = EBADF;
		return (-1);
	}
	if ((wordsize != 32 && wordsize != 64) ||
	     wordsize == qf->wordsize) {
		errno = EINVAL;
		return (-1);
	}
	maxid = FUNC10(qf);
	if ((newqf = FUNC0(1, sizeof(*qf))) == NULL) {
		errno = ENOMEM;
		return (-1);
	}
	*newqf = *qf;
	FUNC15(newqf->qfname, MAXPATHLEN + 1, "%s_%d.orig", qf->qfname,
	    qf->wordsize);
	if (FUNC14(qf->qfname, newqf->qfname) < 0) {
		FUNC3(newqf);
		return (-1);
	}
	if ((newqf->fd = FUNC8(qf->qfname, O_RDWR|O_CREAT|O_TRUNC|O_CLOEXEC,
	    0)) < 0) {
		serrno = errno;
		goto error;
	}
	newqf->wordsize = wordsize;
	if (wordsize == 64) {
		FUNC7(&dqh, 0, sizeof(dqh));
		FUNC6(dqh.dqh_magic, Q_DQHDR64_MAGIC, sizeof(dqh.dqh_magic));
		dqh.dqh_version = FUNC5(Q_DQHDR64_VERSION);
		dqh.dqh_hdrlen = FUNC5(sizeof(struct dqhdr64));
		dqh.dqh_reclen = FUNC5(sizeof(struct dqblk64));
		if (FUNC16(newqf->fd, &dqh, sizeof(dqh)) != sizeof(dqh)) {
			serrno = errno;
			goto error;
		}
	}
	grp = FUNC4(QUOTAGROUP);
	FUNC2(newqf->fd, 0, grp ? grp->gr_gid : 0);
	FUNC1(newqf->fd, 0640);
	for (id = 0; id <= maxid; id++) {
		if ((FUNC11(qf, &dqblk, id)) < 0)
			break;
		switch (newqf->wordsize) {
		case 32:
			if ((FUNC12(newqf, &dqblk, id)) < 0)
				break;
			continue;
		case 64:
			if ((FUNC13(newqf, &dqblk, id)) < 0)
				break;
			continue;
		default:
			errno = EINVAL;
			break;
		}
	}
	if (id < maxid) {
		serrno = errno;
		goto error;
	}
	/*
	 * Update the passed in quotafile to reference the new file
	 * of the converted format size.
	 */
	fd = qf->fd;
	qf->fd = newqf->fd;
	newqf->fd = fd;
	qf->wordsize = newqf->wordsize;
	FUNC9(newqf);
	return (0);
error:
	/* put back the original file */
	(void) FUNC14(newqf->qfname, qf->qfname);
	FUNC9(newqf);
	errno = serrno;
	return (-1);
}