#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dn_struct_rwlock; int /*<<< orphan*/  dn_have_spill; TYPE_1__* dn_objset; } ;
typedef  TYPE_2__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
struct TYPE_5__ {int /*<<< orphan*/  os_spa; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int DB_RF_CANFAIL ; 
 int DB_RF_HAVESTRUCT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_SA ; 
 int FUNC4 (TYPE_2__*,int,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(dmu_buf_t *bonus, void *tag, dmu_buf_t **dbp)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)bonus;
	dnode_t *dn;
	int err;

	FUNC1(db);
	dn = FUNC0(db);

	if (FUNC7(dn->dn_objset->os_spa) < SPA_VERSION_SA) {
		err = FUNC3(EINVAL);
	} else {
		FUNC5(&dn->dn_struct_rwlock, RW_READER);

		if (!dn->dn_have_spill) {
			err = FUNC3(ENOENT);
		} else {
			err = FUNC4(dn,
			    DB_RF_HAVESTRUCT | DB_RF_CANFAIL, tag, dbp);
		}

		FUNC6(&dn->dn_struct_rwlock);
	}

	FUNC2(db);
	return (err);
}