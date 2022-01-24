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
struct TYPE_3__ {int zv_state; struct g_provider* zv_provider; int /*<<< orphan*/  zv_queue_mtx; int /*<<< orphan*/  zv_queue; } ;
typedef  TYPE_1__ zvol_state_t ;
struct g_provider {int /*<<< orphan*/  geom; int /*<<< orphan*/ * private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(zvol_state_t *zv)
{
	struct g_provider *pp;

	FUNC0();

	FUNC4(&zv->zv_queue_mtx);
	zv->zv_state = 1;
	FUNC5(&zv->zv_queue);
	while (zv->zv_state != 2)
		FUNC2(&zv->zv_state, &zv->zv_queue_mtx, 0, "zvol:w", 0);
	FUNC3(&zv->zv_queue_mtx);

	pp = zv->zv_provider;
	zv->zv_provider = NULL;
	pp->private = NULL;
	FUNC1(pp->geom, ENXIO);
}