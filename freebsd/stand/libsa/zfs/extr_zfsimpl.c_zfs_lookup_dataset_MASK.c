#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_mos; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  dd_head_dataset_obj; int /*<<< orphan*/  dd_child_dir_zapobj; } ;
typedef  TYPE_2__ dsl_dir_phys_t ;
struct TYPE_11__ {int /*<<< orphan*/  dn_bonus; } ;
typedef  TYPE_3__ dnode_phys_t ;
typedef  int /*<<< orphan*/  dir_obj ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 char* DMU_POOL_ROOT_DATASET ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*,TYPE_3__*,char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(const spa_t *spa, const char *name, uint64_t *objnum)
{
	char element[256];
	uint64_t dir_obj, child_dir_zapobj;
	dnode_phys_t child_dir_zap, dir;
	dsl_dir_phys_t *dd;
	const char *p, *q;

	if (FUNC1(spa, &spa->spa_mos, DMU_POOL_DIRECTORY_OBJECT, &dir))
		return (EIO);
	if (FUNC5(spa, &dir, DMU_POOL_ROOT_DATASET, sizeof (dir_obj),
	    1, &dir_obj))
		return (EIO);

	p = name;
	for (;;) {
		if (FUNC1(spa, &spa->spa_mos, dir_obj, &dir))
			return (EIO);
		dd = (dsl_dir_phys_t *)&dir.dn_bonus;

		while (*p == '/')
			p++;
		/* Actual loop condition #1. */
		if (*p == '\0')
			break;

		q = FUNC2(p, '/');
		if (q) {
			FUNC0(element, p, q - p);
			element[q - p] = '\0';
			p = q + 1;
		} else {
			FUNC3(element, p);
			p += FUNC4(p);
		}

		child_dir_zapobj = dd->dd_child_dir_zapobj;
		if (FUNC1(spa, &spa->spa_mos, child_dir_zapobj, &child_dir_zap) != 0)
			return (EIO);

		/* Actual loop condition #2. */
		if (FUNC5(spa, &child_dir_zap, element, sizeof (dir_obj),
		    1, &dir_obj) != 0)
			return (ENOENT);
	}

	*objnum = dd->dd_head_dataset_obj;
	return (0);
}