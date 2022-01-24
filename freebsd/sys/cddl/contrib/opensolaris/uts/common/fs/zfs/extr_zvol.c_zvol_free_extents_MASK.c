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
struct TYPE_3__ {int /*<<< orphan*/  zv_extents; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int /*<<< orphan*/  zvol_extent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(zvol_state_t *zv)
{
	zvol_extent_t *ze;

	while ((ze = FUNC1(&zv->zv_extents))) {
		FUNC2(&zv->zv_extents, ze);
		FUNC0(ze, sizeof (zvol_extent_t));
	}
}