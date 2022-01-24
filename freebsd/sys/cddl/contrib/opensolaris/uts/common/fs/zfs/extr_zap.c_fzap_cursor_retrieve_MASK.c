#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_t ;
struct TYPE_20__ {int /*<<< orphan*/  l_rwlock; } ;
typedef  TYPE_2__ zap_leaf_t ;
struct TYPE_21__ {unsigned long long zeh_hash; scalar_t__ zeh_num_integers; int /*<<< orphan*/  zeh_integer_size; int /*<<< orphan*/  zeh_cd; } ;
typedef  TYPE_3__ zap_entry_handle_t ;
struct TYPE_22__ {scalar_t__ zc_hash; TYPE_2__* zc_leaf; int /*<<< orphan*/  zc_cd; int /*<<< orphan*/  zc_zapobj; int /*<<< orphan*/  zc_objset; scalar_t__ zc_prefetch; } ;
typedef  TYPE_4__ zap_cursor_t ;
struct TYPE_23__ {scalar_t__ za_num_integers; int /*<<< orphan*/  za_name; int /*<<< orphan*/  za_normalization_conflict; int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_integer_length; } ;
typedef  TYPE_5__ zap_attribute_t ;
typedef  int uint64_t ;
struct TYPE_19__ {int lh_prefix_len; scalar_t__ lh_prefix; } ;
struct TYPE_24__ {TYPE_1__ l_hdr; } ;
struct TYPE_18__ {int zap_freeblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int EOVERFLOW ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ zap_iterate_prefetch ; 
 int FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_7__* FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

int
FUNC14(zap_t *zap, zap_cursor_t *zc, zap_attribute_t *za)
{
	int err = ENOENT;
	zap_entry_handle_t zeh;
	zap_leaf_t *l;

	/* retrieve the next entry at or after zc_hash/zc_cd */
	/* if no entry, return ENOENT */

	/*
	 * If we are reading from the beginning, we're almost
	 * certain to iterate over the entire ZAP object.  If there are
	 * multiple leaf blocks (freeblk > 2), prefetch the whole
	 * object, so that we read the leaf blocks concurrently.
	 * (Unless noprefetch was requested via zap_cursor_init_noprefetch()).
	 */
	if (zc->zc_hash == 0 && zap_iterate_prefetch &&
	    zc->zc_prefetch && FUNC10(zap)->zap_freeblk > 2) {
		FUNC3(zc->zc_objset, zc->zc_zapobj, 0, 0,
		    FUNC10(zap)->zap_freeblk << FUNC1(zap),
		    ZIO_PRIORITY_ASYNC_READ);
	}

	if (zc->zc_leaf &&
	    (FUNC2(zc->zc_hash,
	    FUNC12(zc->zc_leaf)->l_hdr.lh_prefix_len) !=
	    FUNC12(zc->zc_leaf)->l_hdr.lh_prefix)) {
		FUNC4(&zc->zc_leaf->l_rwlock, RW_READER);
		FUNC13(zc->zc_leaf);
		zc->zc_leaf = NULL;
	}

again:
	if (zc->zc_leaf == NULL) {
		err = FUNC6(zap, zc->zc_hash, NULL, RW_READER,
		    &zc->zc_leaf);
		if (err != 0)
			return (err);
	} else {
		FUNC4(&zc->zc_leaf->l_rwlock, RW_READER);
	}
	l = zc->zc_leaf;

	err = FUNC11(l, zc->zc_hash, zc->zc_cd, &zeh);

	if (err == ENOENT) {
		uint64_t nocare =
		    (1ULL << (64 - FUNC12(l)->l_hdr.lh_prefix_len)) - 1;
		zc->zc_hash = (zc->zc_hash & ~nocare) + nocare + 1;
		zc->zc_cd = 0;
		if (FUNC12(l)->l_hdr.lh_prefix_len == 0 ||
		    zc->zc_hash == 0) {
			zc->zc_hash = -1ULL;
		} else {
			FUNC13(zc->zc_leaf);
			zc->zc_leaf = NULL;
			goto again;
		}
	}

	if (err == 0) {
		zc->zc_hash = zeh.zeh_hash;
		zc->zc_cd = zeh.zeh_cd;
		za->za_integer_length = zeh.zeh_integer_size;
		za->za_num_integers = zeh.zeh_num_integers;
		if (zeh.zeh_num_integers == 0) {
			za->za_first_integer = 0;
		} else {
			err = FUNC8(&zeh, 8, 1, &za->za_first_integer);
			FUNC0(err == 0 || err == EOVERFLOW);
		}
		err = FUNC9(zap, &zeh,
		    sizeof (za->za_name), za->za_name);
		FUNC0(err == 0);

		za->za_normalization_conflict =
		    FUNC7(&zeh,
		    NULL, za->za_name, zap);
	}
	FUNC5(&zc->zc_leaf->l_rwlock);
	return (err);
}