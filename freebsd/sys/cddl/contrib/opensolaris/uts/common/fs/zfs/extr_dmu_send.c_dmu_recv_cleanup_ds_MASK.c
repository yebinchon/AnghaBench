#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* drc_ds; scalar_t__ drc_resumable; } ;
typedef  TYPE_2__ dmu_recv_cookie_t ;
struct TYPE_8__ {TYPE_1__* ds_dir; } ;
struct TYPE_6__ {int /*<<< orphan*/  dd_pool; } ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  dmu_recv_tag ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(dmu_recv_cookie_t *drc)
{
	if (drc->drc_resumable) {
		/* wait for our resume state to be written to disk */
		FUNC3(drc->drc_ds->ds_dir->dd_pool, 0);
		FUNC0(drc->drc_ds, dmu_recv_tag);
	} else {
		char name[ZFS_MAX_DATASET_NAME_LEN];
		FUNC1(drc->drc_ds, name);
		FUNC0(drc->drc_ds, dmu_recv_tag);
		(void) FUNC2(name);
	}
}