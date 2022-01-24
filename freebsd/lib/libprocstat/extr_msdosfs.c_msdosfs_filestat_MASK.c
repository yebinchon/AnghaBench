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
typedef  int u_long ;
struct vnstat {int vn_mode; int vn_fileid; int /*<<< orphan*/  vn_size; int /*<<< orphan*/  vn_fsid; } ;
struct vnode {int dummy; } ;
struct denode {scalar_t__ de_pmp; int de_Attributes; int pm_mask; int pm_BytesPerSec; scalar_t__ de_StartCluster; scalar_t__ de_dirclust; int de_diroffset; int /*<<< orphan*/  de_FileSize; int /*<<< orphan*/  pm_dev; } ;
struct dosmount {scalar_t__ kptr; struct denode data; struct dosmount* next; } ;
struct direntry {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int /*<<< orphan*/  denode ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int ATTR_READONLY ; 
 scalar_t__ MSDOSFSROOT ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 int FUNC1 (struct denode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dosmount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,struct denode*,int) ; 
 struct dosmount* FUNC5 (int) ; 
 int FUNC6 (struct denode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*) ; 

int
FUNC9(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
	struct denode denode;
	static struct dosmount *mounts;
	struct dosmount *mnt;
	u_long dirsperblk;
	int fileid;

	if (!FUNC4(kd, (unsigned long)FUNC0(vp), &denode,
	    sizeof(denode))) {
		FUNC8("can't read denode at %p", (void *)FUNC0(vp));
		return (1);
	}

	/*
	 * Find msdosfsmount structure for the vnode's filesystem. Needed
	 * for some filesystem parameters
	 */
	for (mnt = mounts; mnt; mnt = mnt->next)
		if (mnt->kptr == denode.de_pmp)
			break;

	if (!mnt) {
		if ((mnt = FUNC5(sizeof(struct dosmount))) == NULL) {
			FUNC7("malloc()");
			return (1);
		}
		if (!FUNC4(kd, (unsigned long)denode.de_pmp,
		    &mnt->data, sizeof(mnt->data))) {
			FUNC3(mnt);
			    FUNC8("can't read mount info at %p",
			    (void *)denode.de_pmp);
			return (1);
		}
		mnt->next = mounts;
		mounts = mnt;
		mnt->kptr = denode.de_pmp;
	}

	vn->vn_fsid = FUNC2(kd, mnt->data.pm_dev);
	vn->vn_mode = 0555;
	vn->vn_mode |= denode.de_Attributes & ATTR_READONLY ? 0 : 0222;
	vn->vn_mode &= mnt->data.pm_mask;

	/* Distinguish directories and files. No "special" files in FAT. */
	vn->vn_mode |= denode.de_Attributes & ATTR_DIRECTORY ? S_IFDIR : S_IFREG;
	vn->vn_size = denode.de_FileSize;

	/*
	 * XXX -
	 * Culled from msdosfs_vnops.c. There appears to be a problem
	 * here, in that a directory has the same inode number as the first
	 * file in the directory. stat(2) suffers from this problem also, so
	 * I won't try to fix it here.
	 * 
	 * The following computation of the fileid must be the same as that
	 * used in msdosfs_readdir() to compute d_fileno. If not, pwd
	 * doesn't work.
	 */
	dirsperblk = mnt->data.pm_BytesPerSec / sizeof(struct direntry);
	if (denode.de_Attributes & ATTR_DIRECTORY) {
		fileid = FUNC1(&mnt->data, denode.de_StartCluster)
		    * dirsperblk;
		if (denode.de_StartCluster == MSDOSFSROOT)
			fileid = 1;
	} else {
		fileid = FUNC1(&mnt->data, denode.de_dirclust) * dirsperblk;
		if (denode.de_dirclust == MSDOSFSROOT)
			fileid = FUNC6(&mnt->data, 0) * dirsperblk;
		fileid += denode.de_diroffset / sizeof(struct direntry);
	}

	vn->vn_fileid = fileid;
	return (0);
}