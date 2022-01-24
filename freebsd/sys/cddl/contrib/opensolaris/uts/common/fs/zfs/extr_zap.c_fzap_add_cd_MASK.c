#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  zap_ismicro; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_1__ zap_t ;
struct TYPE_12__ {TYPE_1__* zn_zap; int /*<<< orphan*/  zn_hash; } ;
typedef  TYPE_2__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  int /*<<< orphan*/  zap_entry_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EEXIST ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

int
FUNC10(zap_name_t *zn,
    uint64_t integer_size, uint64_t num_integers,
    const void *val, uint32_t cd, void *tag, dmu_tx_t *tx)
{
	zap_leaf_t *l;
	int err;
	zap_entry_handle_t zeh;
	zap_t *zap = zn->zn_zap;

	FUNC0(FUNC1(&zap->zap_rwlock));
	FUNC0(!zap->zap_ismicro);
	FUNC0(FUNC3(zn, integer_size, num_integers) == 0);

	err = FUNC4(zap, zn->zn_hash, tx, RW_WRITER, &l);
	if (err != 0)
		return (err);
retry:
	err = FUNC8(l, zn, &zeh);
	if (err == 0) {
		err = FUNC2(EEXIST);
		goto out;
	}
	if (err != ENOENT)
		goto out;

	err = FUNC5(l, zn, cd,
	    integer_size, num_integers, val, &zeh);

	if (err == 0) {
		FUNC7(zap, 1, tx);
	} else if (err == EAGAIN) {
		err = FUNC6(zn, l, tag, tx, &l);
		zap = zn->zn_zap;	/* zap_expand_leaf() may change zap */
		if (err == 0)
			goto retry;
	}

out:
	if (zap != NULL)
		FUNC9(zn, l, tag, tx);
	return (err);
}