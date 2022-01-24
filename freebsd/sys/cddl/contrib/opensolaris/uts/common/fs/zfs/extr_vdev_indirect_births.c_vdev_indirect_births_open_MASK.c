#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  vib_entries; int /*<<< orphan*/  vib_object; int /*<<< orphan*/ * vib_objset; TYPE_1__* vib_phys; TYPE_8__* vib_dbuf; } ;
typedef  TYPE_2__ vdev_indirect_births_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {TYPE_1__* db_data; } ;
struct TYPE_9__ {scalar_t__ vib_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

vdev_indirect_births_t *
FUNC8(objset_t *os, uint64_t births_object)
{
	vdev_indirect_births_t *vib = FUNC5(sizeof (*vib), KM_SLEEP);

	vib->vib_objset = os;
	vib->vib_object = births_object;

	FUNC1(FUNC2(os, vib->vib_object, vib, &vib->vib_dbuf));
	vib->vib_phys = vib->vib_dbuf->db_data;

	if (vib->vib_phys->vib_count > 0) {
		uint64_t births_size = FUNC6(vib);
		vib->vib_entries = FUNC4(births_size, KM_SLEEP);
		FUNC1(FUNC3(vib->vib_objset, vib->vib_object, 0,
		    births_size, vib->vib_entries, DMU_READ_PREFETCH));
	}

	FUNC0(FUNC7(vib));

	return (vib);
}