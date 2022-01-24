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
struct TYPE_3__ {int zv_flags; int /*<<< orphan*/ * zv_objset; int /*<<< orphan*/ * zv_dn; int /*<<< orphan*/ * zv_zilog; } ;
typedef  TYPE_1__ zvol_state_t ;

/* Variables and functions */
 int ZVOL_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zvol_tag ; 

void
FUNC8(zvol_state_t *zv)
{
	FUNC7(zv->zv_zilog);
	zv->zv_zilog = NULL;

	FUNC4(zv->zv_dn, zvol_tag);
	zv->zv_dn = NULL;

	/*
	 * Evict cached data
	 */
	if (FUNC5(FUNC1(zv->zv_objset)) &&
	    !(zv->zv_flags & ZVOL_RDONLY))
		FUNC6(FUNC3(zv->zv_objset), 0);
	FUNC2(zv->zv_objset);

	FUNC0(zv->zv_objset, zvol_tag);
	zv->zv_objset = NULL;
}