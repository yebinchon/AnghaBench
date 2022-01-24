#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ zhca_spa_load_guid; int /*<<< orphan*/  zhca_holds; int /*<<< orphan*/  zhca_spaname; } ;
typedef  TYPE_1__ zfs_hold_cleanup_arg_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	zfs_hold_cleanup_arg_t *ca = arg;
	spa_t *spa;
	int error;

	error = FUNC6(ca->zhca_spaname, &spa, FTAG);
	if (error != 0) {
		FUNC7("couldn't release holds on pool=%s "
		    "because pool is no longer loaded",
		    ca->zhca_spaname);
		return;
	}
	if (FUNC5(spa) != ca->zhca_spa_load_guid) {
		FUNC7("couldn't release holds on pool=%s "
		    "because pool is no longer loaded (guid doesn't match)",
		    ca->zhca_spaname);
		FUNC3(spa, FTAG);
		return;
	}

	(void) FUNC0(FUNC4(spa), ca->zhca_holds);
	FUNC1(ca->zhca_holds);
	FUNC2(ca, sizeof (zfs_hold_cleanup_arg_t));
	FUNC3(spa, FTAG);
}