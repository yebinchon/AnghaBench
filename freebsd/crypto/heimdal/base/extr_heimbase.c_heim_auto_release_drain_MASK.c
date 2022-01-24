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
typedef  int /*<<< orphan*/  heim_object_t ;
typedef  TYPE_1__* heim_auto_release_t ;
struct TYPE_3__ {int /*<<< orphan*/  pool_mutex; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(heim_auto_release_t autorel)
{
    heim_object_t obj;

    /* release all elements on the tail queue */

    FUNC1(&autorel->pool_mutex);
    while(!FUNC3(&autorel->pool)) {
	obj = FUNC4(&autorel->pool);
	FUNC2(&autorel->pool_mutex);
	FUNC5(FUNC0(obj));
	FUNC1(&autorel->pool_mutex);
    }
    FUNC2(&autorel->pool_mutex);
}