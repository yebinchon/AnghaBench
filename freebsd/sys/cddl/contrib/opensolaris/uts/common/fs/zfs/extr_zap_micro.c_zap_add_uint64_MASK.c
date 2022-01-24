#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_t ;
struct TYPE_5__ {int /*<<< orphan*/ * zn_zap; } ;
typedef  TYPE_1__ zap_name_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(objset_t *os, uint64_t zapobj, const uint64_t *key,
    int key_numints, int integer_size, uint64_t num_integers,
    const void *val, dmu_tx_t *tx)
{
	zap_t *zap;

	int err =
	    FUNC2(os, zapobj, tx, RW_WRITER, TRUE, TRUE, FTAG, &zap);
	if (err != 0)
		return (err);
	zap_name_t *zn = FUNC3(zap, key, key_numints);
	if (zn == NULL) {
		FUNC5(zap, FTAG);
		return (FUNC0(ENOTSUP));
	}
	err = FUNC1(zn, integer_size, num_integers, val, FTAG, tx);
	zap = zn->zn_zap;	/* fzap_add() may change zap */
	FUNC4(zn);
	if (zap != NULL)	/* may be NULL if fzap_add() failed */
		FUNC5(zap, FTAG);
	return (err);
}