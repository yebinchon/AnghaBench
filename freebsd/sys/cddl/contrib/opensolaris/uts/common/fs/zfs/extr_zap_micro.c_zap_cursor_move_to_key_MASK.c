#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_name_t ;
struct TYPE_8__ {TYPE_3__* zc_zap; int /*<<< orphan*/  zc_cd; int /*<<< orphan*/  zc_hash; int /*<<< orphan*/  zc_zapobj; int /*<<< orphan*/  zc_objset; } ;
typedef  TYPE_1__ zap_cursor_t ;
struct TYPE_9__ {int /*<<< orphan*/  mze_cd; int /*<<< orphan*/  mze_hash; } ;
typedef  TYPE_2__ mzap_ent_t ;
typedef  int /*<<< orphan*/  matchtype_t ;
struct TYPE_10__ {int /*<<< orphan*/  zap_rwlock; int /*<<< orphan*/  zap_ismicro; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(zap_cursor_t *zc, const char *name, matchtype_t mt)
{
	int err = 0;
	mzap_ent_t *mze;
	zap_name_t *zn;

	if (zc->zc_zap == NULL) {
		err = FUNC5(zc->zc_objset, zc->zc_zapobj, NULL,
		    RW_READER, TRUE, FALSE, FTAG, &zc->zc_zap);
		if (err)
			return (err);
	} else {
		FUNC3(&zc->zc_zap->zap_rwlock, RW_READER);
	}

	zn = FUNC6(zc->zc_zap, name, mt);
	if (zn == NULL) {
		FUNC4(&zc->zc_zap->zap_rwlock);
		return (FUNC0(ENOTSUP));
	}

	if (!zc->zc_zap->zap_ismicro) {
		err = FUNC1(zc, zn);
	} else {
		mze = FUNC2(zn);
		if (mze == NULL) {
			err = FUNC0(ENOENT);
			goto out;
		}
		zc->zc_hash = mze->mze_hash;
		zc->zc_cd = mze->mze_cd;
	}

out:
	FUNC7(zn);
	FUNC4(&zc->zc_zap->zap_rwlock);
	return (err);
}