#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* io_logical; } ;
typedef  TYPE_2__ zio_t ;
typedef  void* zbookmark_phys_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_errlist_lock; int /*<<< orphan*/  spa_errlist_last; int /*<<< orphan*/  spa_errlist_scrub; scalar_t__ spa_scrub_finished; scalar_t__ spa_scrub_active; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_14__ {void* se_bookmark; } ;
typedef  TYPE_4__ spa_error_entry_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_11__ {void* io_bookmark; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ SPA_LOAD_TRYIMPORT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 

void
FUNC6(spa_t *spa, zio_t *zio)
{
	zbookmark_phys_t *zb = &zio->io_logical->io_bookmark;
	spa_error_entry_t search;
	spa_error_entry_t *new;
	avl_tree_t *tree;
	avl_index_t where;

	/*
	 * If we are trying to import a pool, ignore any errors, as we won't be
	 * writing to the pool any time soon.
	 */
	if (FUNC5(spa) == SPA_LOAD_TRYIMPORT)
		return;

	FUNC3(&spa->spa_errlist_lock);

	/*
	 * If we have had a request to rotate the log, log it to the next list
	 * instead of the current one.
	 */
	if (spa->spa_scrub_active || spa->spa_scrub_finished)
		tree = &spa->spa_errlist_scrub;
	else
		tree = &spa->spa_errlist_last;

	search.se_bookmark = *zb;
	if (FUNC0(tree, &search, &where) != NULL) {
		FUNC4(&spa->spa_errlist_lock);
		return;
	}

	new = FUNC2(sizeof (spa_error_entry_t), KM_SLEEP);
	new->se_bookmark = *zb;
	FUNC1(tree, new, where);

	FUNC4(&spa->spa_errlist_lock);
}