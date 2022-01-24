#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int un_value; } ;
typedef  TYPE_1__ unique_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int UNIQUE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  unique_avl ; 
 int /*<<< orphan*/  unique_mtx ; 

uint64_t
FUNC6(uint64_t value)
{
	avl_index_t idx;
	unique_t *un = FUNC2(sizeof (unique_t), KM_SLEEP);

	un->un_value = value;

	FUNC3(&unique_mtx);
	while (un->un_value == 0 || un->un_value & ~UNIQUE_MASK ||
	    FUNC0(&unique_avl, un, &idx)) {
		FUNC4(&unique_mtx);
		(void) FUNC5((void*)&un->un_value,
		    sizeof (un->un_value));
		un->un_value &= UNIQUE_MASK;
		FUNC3(&unique_mtx);
	}

	FUNC1(&unique_avl, un, idx);
	FUNC4(&unique_mtx);

	return (un->un_value);
}