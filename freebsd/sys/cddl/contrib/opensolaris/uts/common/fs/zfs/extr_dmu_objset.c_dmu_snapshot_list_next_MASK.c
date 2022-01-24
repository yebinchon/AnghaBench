#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_13__ {int /*<<< orphan*/  za_normalization_conflict; int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {TYPE_5__* os_dsl_dataset; } ;
typedef  TYPE_4__ objset_t ;
struct TYPE_15__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_5__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_16__ {scalar_t__ ds_snapnames_zapobj; } ;
struct TYPE_12__ {TYPE_1__* dd_pool; } ;
struct TYPE_11__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_7__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(objset_t *os, int namelen, char *name,
    uint64_t *idp, uint64_t *offp, boolean_t *case_conflict)
{
	dsl_dataset_t *ds = os->os_dsl_dataset;
	zap_cursor_t cursor;
	zap_attribute_t attr;

	FUNC0(FUNC4(FUNC2(os)));

	if (FUNC3(ds)->ds_snapnames_zapobj == 0)
		return (FUNC1(ENOENT));

	FUNC9(&cursor,
	    ds->ds_dir->dd_pool->dp_meta_objset,
	    FUNC3(ds)->ds_snapnames_zapobj, *offp);

	if (FUNC10(&cursor, &attr) != 0) {
		FUNC8(&cursor);
		return (FUNC1(ENOENT));
	}

	if (FUNC6(attr.za_name) + 1 > namelen) {
		FUNC8(&cursor);
		return (FUNC1(ENAMETOOLONG));
	}

	(void) FUNC5(name, attr.za_name);
	if (idp)
		*idp = attr.za_first_integer;
	if (case_conflict)
		*case_conflict = attr.za_normalization_conflict;
	FUNC7(&cursor);
	*offp = FUNC11(&cursor);
	FUNC8(&cursor);

	return (0);
}