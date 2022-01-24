#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int z_pflags; scalar_t__ z_size; int z_blksz; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_rangelock; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_mode; TYPE_3__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_20__ {scalar_t__ z_log; TYPE_1__* z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
struct TYPE_21__ {scalar_t__ xu_type; } ;
typedef  TYPE_4__ xuio_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_22__ {scalar_t__ uio_loffset; int uio_resid; scalar_t__ uio_extflg; scalar_t__ uio_segflg; int /*<<< orphan*/  uio_fmode; } ;
typedef  TYPE_5__ uio_t ;
typedef  int uint64_t ;
typedef  int ssize_t ;
typedef  scalar_t__ offset_t ;
typedef  int /*<<< orphan*/  locked_range_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
struct TYPE_18__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EACCES ; 
 int ECKSUM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FREAD ; 
 int FRSYNC ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,scalar_t__) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  RL_READER ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ UIOTYPE_ZEROCOPY ; 
 scalar_t__ UIO_NOCOPY ; 
 scalar_t__ UIO_XUIO ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_read_chunk_size ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(vnode_t *vp, uio_t *uio, int ioflag, cred_t *cr, caller_context_t *ct)
{
	znode_t		*zp = FUNC8(vp);
	zfsvfs_t	*zfsvfs = zp->z_zfsvfs;
	ssize_t		n, nbytes;
	int		error = 0;
	xuio_t		*xuio = NULL;

	FUNC10(zfsvfs);
	FUNC12(zp);

	if (zp->z_pflags & ZFS_AV_QUARANTINED) {
		FUNC11(zfsvfs);
		return (FUNC7(EACCES));
	}

	/*
	 * Validate file offset
	 */
	if (uio->uio_loffset < (offset_t)0) {
		FUNC11(zfsvfs);
		return (FUNC7(EINVAL));
	}

	/*
	 * Fasttrack empty reads
	 */
	if (uio->uio_resid == 0) {
		FUNC11(zfsvfs);
		return (0);
	}

	/*
	 * Check for mandatory locks
	 */
	if (FUNC2(zp->z_mode)) {
		if ((error = FUNC13(vp, FREAD,
		    uio->uio_loffset, uio->uio_resid, uio->uio_fmode, ct))) {
			FUNC11(zfsvfs);
			return (error);
		}
	}

	/*
	 * If we're in FRSYNC mode, sync out this znode before reading it.
	 */
	if (zfsvfs->z_log &&
	    (ioflag & FRSYNC || zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS))
		FUNC24(zfsvfs->z_log, zp->z_id);

	/*
	 * Lock the range against changes.
	 */
	locked_range_t *lr = FUNC20(&zp->z_rangelock,
	    uio->uio_loffset, uio->uio_resid, RL_READER);

	/*
	 * If we are reading past end-of-file we can skip
	 * to the end; but we might still need to set atime.
	 */
	if (uio->uio_loffset >= zp->z_size) {
		error = 0;
		goto out;
	}

	FUNC0(uio->uio_loffset < zp->z_size);
	n = FUNC3(uio->uio_resid, zp->z_size - uio->uio_loffset);

#ifdef illumos
	if ((uio->uio_extflg == UIO_XUIO) &&
	    (((xuio_t *)uio)->xu_type == UIOTYPE_ZEROCOPY)) {
		int nblk;
		int blksz = zp->z_blksz;
		uint64_t offset = uio->uio_loffset;

		xuio = (xuio_t *)uio;
		if ((ISP2(blksz))) {
			nblk = (P2ROUNDUP(offset + n, blksz) - P2ALIGN(offset,
			    blksz)) / blksz;
		} else {
			ASSERT(offset + n <= blksz);
			nblk = 1;
		}
		(void) dmu_xuio_init(xuio, nblk);

		if (vn_has_cached_data(vp)) {
			/*
			 * For simplicity, we always allocate a full buffer
			 * even if we only expect to read a portion of a block.
			 */
			while (--nblk >= 0) {
				(void) dmu_xuio_add(xuio,
				    dmu_request_arcbuf(sa_get_db(zp->z_sa_hdl),
				    blksz), 0, blksz);
			}
		}
	}
#endif	/* illumos */

	while (n > 0) {
		nbytes = FUNC3(n, zfs_read_chunk_size -
		    FUNC5(uio->uio_loffset, zfs_read_chunk_size));

#ifdef __FreeBSD__
		if (uio->uio_segflg == UIO_NOCOPY)
			error = mappedread_sf(vp, nbytes, uio);
		else
#endif /* __FreeBSD__ */
		if (FUNC23(vp)) {
			error = FUNC18(vp, nbytes, uio);
		} else {
			error = FUNC14(FUNC22(zp->z_sa_hdl),
			    uio, nbytes);
		}
		if (error) {
			/* convert checksum errors into IO errors */
			if (error == ECKSUM)
				error = FUNC7(EIO);
			break;
		}

		n -= nbytes;
	}
out:
	FUNC21(lr);

	FUNC9(zfsvfs, zp);
	FUNC11(zfsvfs);
	return (error);
}