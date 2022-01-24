#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * zhca_holds; int /*<<< orphan*/  zhca_spa_load_guid; int /*<<< orphan*/  zhca_spaname; } ;
typedef  TYPE_1__ zfs_hold_cleanup_arg_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_dataset_user_release_onexit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(spa_t *spa, nvlist_t *holds, minor_t minor)
{
	zfs_hold_cleanup_arg_t *ca;

	if (minor == 0 || FUNC4(holds)) {
		FUNC2(holds);
		return;
	}

	FUNC0(spa != NULL);
	ca = FUNC3(sizeof (*ca), KM_SLEEP);

	(void) FUNC7(ca->zhca_spaname, FUNC6(spa),
	    sizeof (ca->zhca_spaname));
	ca->zhca_spa_load_guid = FUNC5(spa);
	ca->zhca_holds = holds;
	FUNC1(FUNC8(minor,
	    dsl_dataset_user_release_onexit, ca, NULL));
}