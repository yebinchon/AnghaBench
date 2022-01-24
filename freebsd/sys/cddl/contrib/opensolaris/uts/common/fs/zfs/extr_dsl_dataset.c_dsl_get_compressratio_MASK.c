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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_7__ {TYPE_1__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_2__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC4(dsl_dataset_t *ds)
{
	if (ds->ds_is_snapshot) {
		return (FUNC1(ds));
	} else {
		dsl_dir_t *dd = ds->ds_dir;
		FUNC2(&dd->dd_lock);
		uint64_t val = FUNC0(dd);
		FUNC3(&dd->dd_lock);
		return (val);
	}
}