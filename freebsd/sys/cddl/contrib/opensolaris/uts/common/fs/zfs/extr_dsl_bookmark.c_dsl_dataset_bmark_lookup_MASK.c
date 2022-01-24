#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_bookmark_phys_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  matchtype_t ;
struct TYPE_9__ {scalar_t__ ds_bookmarks; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_10__ {int ds_flags; } ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int DS_FLAG_CI_DATASET ; 
 int ENOENT ; 
 int ESRCH ; 
 int /*<<< orphan*/  MT_NORMALIZE ; 
 int FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(dsl_dataset_t *ds, const char *shortname,
    zfs_bookmark_phys_t *bmark_phys)
{
	objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
	uint64_t bmark_zapobj = ds->ds_bookmarks;
	matchtype_t mt = 0;
	int err;

	if (bmark_zapobj == 0)
		return (FUNC0(ESRCH));

	if (FUNC1(ds)->ds_flags & DS_FLAG_CI_DATASET)
		mt = MT_NORMALIZE;

	err = FUNC2(mos, bmark_zapobj, shortname, sizeof (uint64_t),
	    sizeof (*bmark_phys) / sizeof (uint64_t), bmark_phys, mt,
	    NULL, 0, NULL);

	return (err == ENOENT ? ESRCH : err);
}