#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_15__ {int /*<<< orphan*/  ddt_lock; int /*<<< orphan*/  ddt_tree; } ;
typedef  TYPE_1__ ddt_t ;
struct TYPE_16__ {scalar_t__ dde_loading; scalar_t__ dde_loaded; int dde_type; int dde_class; int /*<<< orphan*/  dde_cv; int /*<<< orphan*/  dde_key; } ;
typedef  TYPE_2__ ddt_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int DDT_CLASSES ; 
 int DDT_TYPES ; 
 int ENOENT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC11 (TYPE_1__*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*,unsigned long long) ; 

ddt_entry_t *
FUNC13(ddt_t *ddt, const blkptr_t *bp, boolean_t add)
{
	ddt_entry_t *dde, dde_search;
	enum ddt_type type;
	enum ddt_class class;
	avl_index_t where;
	int error;

	FUNC0(FUNC2(&ddt->ddt_lock));

	FUNC10(&dde_search.dde_key, bp);

	dde = FUNC3(&ddt->ddt_tree, &dde_search, &where);
	if (dde == NULL) {
		if (!add)
			return (NULL);
		dde = FUNC7(&dde_search.dde_key);
		FUNC4(&ddt->ddt_tree, dde, where);
	}

	while (dde->dde_loading)
		FUNC6(&dde->dde_cv, &ddt->ddt_lock);

	if (dde->dde_loaded)
		return (dde);

	dde->dde_loading = B_TRUE;

	FUNC9(ddt);

	error = ENOENT;

	for (type = 0; type < DDT_TYPES; type++) {
		for (class = 0; class < DDT_CLASSES; class++) {
			error = FUNC11(ddt, type, class, dde);
			if (error != ENOENT) {
				FUNC1(error);
				break;
			}
		}
		if (error != ENOENT)
			break;
	}

	FUNC8(ddt);

	FUNC0(dde->dde_loaded == B_FALSE);
	FUNC0(dde->dde_loading == B_TRUE);

	dde->dde_type = type;	/* will be DDT_TYPES if no entry found */
	dde->dde_class = class;	/* will be DDT_CLASSES if no entry found */
	dde->dde_loaded = B_TRUE;
	dde->dde_loading = B_FALSE;

	if (error == 0)
		FUNC12(ddt, dde, -1ULL);

	FUNC5(&dde->dde_cv);

	return (dde);
}