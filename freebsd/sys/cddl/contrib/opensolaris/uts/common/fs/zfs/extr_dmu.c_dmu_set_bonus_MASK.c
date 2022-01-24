#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dn_bonus; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int db_size; } ;
typedef  TYPE_2__ dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

int
FUNC5(dmu_buf_t *db_fake, int newsize, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
	dnode_t *dn;
	int error;

	FUNC1(db);
	dn = FUNC0(db);

	if (dn->dn_bonus != db) {
		error = FUNC3(EINVAL);
	} else if (newsize < 0 || newsize > db_fake->db_size) {
		error = FUNC3(EINVAL);
	} else {
		FUNC4(dn, newsize, tx);
		error = 0;
	}

	FUNC2(db);
	return (error);
}