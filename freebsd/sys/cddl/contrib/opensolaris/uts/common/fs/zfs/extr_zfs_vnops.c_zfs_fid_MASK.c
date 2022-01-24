#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int z_id; int /*<<< orphan*/  z_sa_hdl; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_13__ {int /*<<< orphan*/  z_os; struct TYPE_13__* z_parent; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_14__ {int zf_len; void** zf_gen; void** zf_object; } ;
typedef  TYPE_3__ zfid_short_t ;
struct TYPE_15__ {scalar_t__* zf_setgen; void** zf_setid; } ;
typedef  TYPE_4__ zfid_long_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  void* uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_16__ {int fid_len; } ;
typedef  TYPE_5__ fid_t ;
typedef  int /*<<< orphan*/  caller_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int LONG_FID_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SHORT_FID_LEN ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int
FUNC8(vnode_t *vp, fid_t *fidp, caller_context_t *ct)
{
	znode_t		*zp = FUNC2(vp);
	zfsvfs_t	*zfsvfs = zp->z_zfsvfs;
	uint32_t	gen;
	uint64_t	gen64;
	uint64_t	object = zp->z_id;
	zfid_short_t	*zfid;
	int		size, i, error;

	FUNC3(zfsvfs);
	FUNC5(zp);

	if ((error = FUNC7(zp->z_sa_hdl, FUNC0(zfsvfs),
	    &gen64, sizeof (uint64_t))) != 0) {
		FUNC4(zfsvfs);
		return (error);
	}

	gen = (uint32_t)gen64;

	size = (zfsvfs->z_parent != zfsvfs) ? LONG_FID_LEN : SHORT_FID_LEN;

#ifdef illumos
	if (fidp->fid_len < size) {
		fidp->fid_len = size;
		ZFS_EXIT(zfsvfs);
		return (SET_ERROR(ENOSPC));
	}
#else
	fidp->fid_len = size;
#endif

	zfid = (zfid_short_t *)fidp;

	zfid->zf_len = size;

	for (i = 0; i < sizeof (zfid->zf_object); i++)
		zfid->zf_object[i] = (uint8_t)(object >> (8 * i));

	/* Must have a non-zero generation number to distinguish from .zfs */
	if (gen == 0)
		gen = 1;
	for (i = 0; i < sizeof (zfid->zf_gen); i++)
		zfid->zf_gen[i] = (uint8_t)(gen >> (8 * i));

	if (size == LONG_FID_LEN) {
		uint64_t	objsetid = FUNC6(zfsvfs->z_os);
		zfid_long_t	*zlfid;

		zlfid = (zfid_long_t *)fidp;

		for (i = 0; i < sizeof (zlfid->zf_setid); i++)
			zlfid->zf_setid[i] = (uint8_t)(objsetid >> (8 * i));

		/* XXX - this should be the generation number for the objset */
		for (i = 0; i < sizeof (zlfid->zf_setgen); i++)
			zlfid->zf_setgen[i] = 0;
	}

	FUNC4(zfsvfs);
	return (0);
}