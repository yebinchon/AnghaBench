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
struct TYPE_5__ {int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_1__ zap_t ;
typedef  int /*<<< orphan*/  zap_name_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  mzap_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC7(objset_t *os, uint64_t zapobj, const char *name,
    uint64_t *integer_size, uint64_t *num_integers)
{
	zap_t *zap;

	int err =
	    FUNC3(os, zapobj, NULL, RW_READER, TRUE, FALSE, FTAG, &zap);
	if (err != 0)
		return (err);
	zap_name_t *zn = FUNC4(zap, name, 0);
	if (zn == NULL) {
		FUNC6(zap, FTAG);
		return (FUNC0(ENOTSUP));
	}
	if (!zap->zap_ismicro) {
		err = FUNC1(zn, integer_size, num_integers);
	} else {
		mzap_ent_t *mze = FUNC2(zn);
		if (mze == NULL) {
			err = FUNC0(ENOENT);
		} else {
			if (integer_size)
				*integer_size = 8;
			if (num_integers)
				*num_integers = 1;
		}
	}
	FUNC5(zn);
	FUNC6(zap, FTAG);
	return (err);
}