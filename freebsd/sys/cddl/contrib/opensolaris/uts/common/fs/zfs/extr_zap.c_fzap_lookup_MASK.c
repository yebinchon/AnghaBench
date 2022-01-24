#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zn_zap; int /*<<< orphan*/  zn_hash; } ;
typedef  TYPE_1__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  int /*<<< orphan*/  zap_entry_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(zap_name_t *zn,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    char *realname, int rn_len, boolean_t *ncp)
{
	zap_leaf_t *l;
	zap_entry_handle_t zeh;

	int err = FUNC0(zn);
	if (err != 0)
		return (err);

	err = FUNC2(zn->zn_zap, zn->zn_hash, NULL, RW_READER, &l);
	if (err != 0)
		return (err);
	err = FUNC6(l, zn, &zeh);
	if (err == 0) {
		if ((err = FUNC1(integer_size, num_integers)) != 0) {
			FUNC7(l);
			return (err);
		}

		err = FUNC4(&zeh, integer_size, num_integers, buf);
		(void) FUNC5(zn->zn_zap, &zeh, rn_len, realname);
		if (ncp) {
			*ncp = FUNC3(&zeh,
			    zn, NULL, zn->zn_zap);
		}
	}

	FUNC7(l);
	return (err);
}