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
struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  scalar_t__ dmu_objset_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;

/* Variables and functions */
 scalar_t__ DMU_OST_ANY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EROFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(dsl_dataset_t *ds, dmu_objset_type_t type,
    boolean_t readonly, void *tag, objset_t **osp)
{
	int err;

	err = FUNC1(ds, osp);
	if (err != 0) {
		FUNC2(ds, tag);
	} else if (type != DMU_OST_ANY && type != (*osp)->os_phys->os_type) {
		FUNC2(ds, tag);
		return (FUNC0(EINVAL));
	} else if (!readonly && FUNC3(ds)) {
		FUNC2(ds, tag);
		return (FUNC0(EROFS));
	}
	return (err);
}