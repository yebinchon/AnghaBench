#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_10__ {char* se_name; int /*<<< orphan*/  se_bookmark; } ;
typedef  TYPE_2__ spa_error_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DMU_OT_ERROR_LOG ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,void**) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,int,scalar_t__,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(spa_t *spa, avl_tree_t *t, uint64_t *obj, dmu_tx_t *tx)
{
	spa_error_entry_t *se;
	char buf[64];
	void *cookie;

	if (FUNC3(t) != 0) {
		/* create log if necessary */
		if (*obj == 0)
			*obj = FUNC7(spa->spa_meta_objset,
			    DMU_OT_ERROR_LOG, DMU_OT_NONE,
			    0, tx);

		/* add errors to the current log */
		for (se = FUNC2(t); se != NULL; se = FUNC0(t, se)) {
			char *name = se->se_name ? se->se_name : "";

			FUNC4(&se->se_bookmark, buf, sizeof (buf));

			(void) FUNC8(spa->spa_meta_objset,
			    *obj, buf, 1, FUNC6(name) + 1, name, tx);
		}

		/* purge the error list */
		cookie = NULL;
		while ((se = FUNC1(t, &cookie)) != NULL)
			FUNC5(se, sizeof (spa_error_entry_t));
	}
}