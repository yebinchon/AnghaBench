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
struct TYPE_4__ {int /*<<< orphan*/  spa_inject_ref; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 

spa_t *
FUNC3(char *name)
{
	spa_t *spa;

	FUNC0(&spa_namespace_lock);
	if ((spa = FUNC2(name)) == NULL) {
		FUNC1(&spa_namespace_lock);
		return (NULL);
	}
	spa->spa_inject_ref++;
	FUNC1(&spa_namespace_lock);

	return (spa);
}