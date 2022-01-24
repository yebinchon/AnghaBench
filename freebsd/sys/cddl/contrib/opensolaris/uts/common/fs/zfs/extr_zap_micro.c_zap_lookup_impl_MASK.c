#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_1__ zap_t ;
typedef  int /*<<< orphan*/  zap_name_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  mzap_ent_t ;
typedef  int /*<<< orphan*/  matchtype_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int mze_value; int /*<<< orphan*/  mze_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 TYPE_5__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zap_t *zap, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    matchtype_t mt, char *realname, int rn_len,
    boolean_t *ncp)
{
	int err = 0;

	zap_name_t *zn = FUNC6(zap, name, mt);
	if (zn == NULL)
		return (FUNC1(ENOTSUP));

	if (!zap->zap_ismicro) {
		err = FUNC2(zn, integer_size, num_integers, buf,
		    realname, rn_len, ncp);
	} else {
		mzap_ent_t *mze = FUNC4(zn);
		if (mze == NULL) {
			err = FUNC1(ENOENT);
		} else {
			if (num_integers < 1) {
				err = FUNC1(EOVERFLOW);
			} else if (integer_size != 8) {
				err = FUNC1(EINVAL);
			} else {
				*(uint64_t *)buf =
				    FUNC0(zap, mze)->mze_value;
				(void) FUNC5(realname,
				    FUNC0(zap, mze)->mze_name, rn_len);
				if (ncp) {
					*ncp = FUNC3(zap,
					    zn, mze);
				}
			}
		}
	}
	FUNC7(zn);
	return (err);
}