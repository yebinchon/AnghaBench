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
struct TYPE_3__ {scalar_t__ spa_minref; int /*<<< orphan*/  spa_refcount; } ;
typedef  TYPE_1__ spa_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC3(spa_t *spa)
{
	FUNC0(FUNC1(&spa_namespace_lock));

	return (FUNC2(&spa->spa_refcount) == spa->spa_minref);
}