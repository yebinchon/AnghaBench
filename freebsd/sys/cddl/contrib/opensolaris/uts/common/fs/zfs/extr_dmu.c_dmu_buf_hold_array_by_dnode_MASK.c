#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_18__ {int dn_datablkshift; scalar_t__ dn_datablksz; int /*<<< orphan*/  dn_struct_rwlock; int /*<<< orphan*/  dn_zfetch; TYPE_2__* dn_objset; scalar_t__ dn_object; } ;
typedef  TYPE_4__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_19__ {scalar_t__ db_state; int /*<<< orphan*/  db_mtx; int /*<<< orphan*/  db_changed; int /*<<< orphan*/  db; } ;
typedef  TYPE_5__ dmu_buf_impl_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_17__ {int /*<<< orphan*/  ru_oublock; } ;
struct TYPE_16__ {int /*<<< orphan*/  os_spa; TYPE_1__* os_dsl_dataset; } ;
struct TYPE_15__ {scalar_t__ ds_object; } ;
struct TYPE_14__ {TYPE_3__ td_ru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DB_FILL ; 
 scalar_t__ DB_READ ; 
 int DB_RF_CANFAIL ; 
 int DB_RF_HAVESTRUCT ; 
 int DB_RF_NEVERWAIT ; 
 int DB_RF_NOPREFETCH ; 
 scalar_t__ DB_UNCACHED ; 
 scalar_t__ DMU_MAX_ACCESS ; 
 int DMU_READ_NO_PREFETCH ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC3 (scalar_t__,unsigned long long) ; 
 int FUNC4 (scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RACCT_WRITEBPS ; 
 int /*<<< orphan*/  RACCT_WRITEIOPS ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 int /*<<< orphan*/  curproc ; 
 TYPE_11__* curthread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC9 (TYPE_4__*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/ ** FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfetch_array_rd_sz ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 

int
FUNC24(dnode_t *dn, uint64_t offset, uint64_t length,
    boolean_t read, void *tag, int *numbufsp, dmu_buf_t ***dbpp, uint32_t flags)
{
	dmu_buf_t **dbp;
	uint64_t blkid, nblks, i;
	uint32_t dbuf_flags;
	int err;
	zio_t *zio;

	FUNC0(length <= DMU_MAX_ACCESS);

	/*
	 * Note: We directly notify the prefetch code of this read, so that
	 * we can tell it about the multi-block read.  dbuf_read() only knows
	 * about the one block it is accessing.
	 */
	dbuf_flags = DB_RF_CANFAIL | DB_RF_NEVERWAIT | DB_RF_HAVESTRUCT |
	    DB_RF_NOPREFETCH;

	FUNC18(&dn->dn_struct_rwlock, RW_READER);
	if (dn->dn_datablkshift) {
		int blkshift = dn->dn_datablkshift;
		nblks = (FUNC4(offset + length, 1ULL << blkshift) -
		    FUNC3(offset, 1ULL << blkshift)) >> blkshift;
	} else {
		if (offset + length > dn->dn_datablksz) {
			FUNC20("zfs: accessing past end of object "
			    "%llx/%llx (size=%u access=%llu+%llu)",
			    (longlong_t)dn->dn_objset->
			    os_dsl_dataset->ds_object,
			    (longlong_t)dn->dn_object, dn->dn_datablksz,
			    (longlong_t)offset, (longlong_t)length);
			FUNC19(&dn->dn_struct_rwlock);
			return (FUNC7(EIO));
		}
		nblks = 1;
	}
	dbp = FUNC14(sizeof (dmu_buf_t *) * nblks, KM_SLEEP);

#if defined(_KERNEL) && defined(RACCT)
	if (racct_enable && !read) {
		PROC_LOCK(curproc);
		racct_add_force(curproc, RACCT_WRITEBPS, length);
		racct_add_force(curproc, RACCT_WRITEIOPS, nblks);
		PROC_UNLOCK(curproc);
	}
#endif

	zio = FUNC22(dn->dn_objset->os_spa, NULL, NULL, ZIO_FLAG_CANFAIL);
	blkid = FUNC11(dn, 0, offset);
	for (i = 0; i < nblks; i++) {
		dmu_buf_impl_t *db = FUNC9(dn, blkid + i, tag);
		if (db == NULL) {
			FUNC19(&dn->dn_struct_rwlock);
			FUNC12(dbp, nblks, tag);
			FUNC21(zio);
			return (FUNC7(EIO));
		}

		/* initiate async i/o */
		if (read)
			(void) FUNC10(db, zio, dbuf_flags);
#ifdef _KERNEL
		else
			curthread->td_ru.ru_oublock++;
#endif
		dbp[i] = &db->db;
	}

	if ((flags & DMU_READ_NO_PREFETCH) == 0 &&
	    FUNC2(dn) && length <= zfetch_array_rd_sz) {
		FUNC13(&dn->dn_zfetch, blkid, nblks,
		    read && FUNC1(dn));
	}
	FUNC19(&dn->dn_struct_rwlock);

	/* wait for async i/o */
	err = FUNC23(zio);
	if (err) {
		FUNC12(dbp, nblks, tag);
		return (err);
	}

	/* wait for other io to complete */
	if (read) {
		for (i = 0; i < nblks; i++) {
			dmu_buf_impl_t *db = (dmu_buf_impl_t *)dbp[i];
			FUNC15(&db->db_mtx);
			while (db->db_state == DB_READ ||
			    db->db_state == DB_FILL)
				FUNC8(&db->db_changed, &db->db_mtx);
			if (db->db_state == DB_UNCACHED)
				err = FUNC7(EIO);
			FUNC16(&db->db_mtx);
			if (err) {
				FUNC12(dbp, nblks, tag);
				return (err);
			}
		}
	}

	*numbufsp = nblks;
	*dbpp = dbp;
	return (0);
}