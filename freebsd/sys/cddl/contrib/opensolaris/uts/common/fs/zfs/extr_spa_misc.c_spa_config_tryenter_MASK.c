#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* spa_config_lock; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_6__ {scalar_t__ scl_writer; int /*<<< orphan*/  scl_lock; int /*<<< orphan*/  scl_count; scalar_t__ scl_write_wanted; } ;
typedef  TYPE_2__ spa_config_lock_t ;
typedef  scalar_t__ krw_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RW_READER ; 
 int SCL_LOCKS ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(spa_t *spa, int locks, void *tag, krw_t rw)
{
	for (int i = 0; i < SCL_LOCKS; i++) {
		spa_config_lock_t *scl = &spa->spa_config_lock[i];
		if (!(locks & (1 << i)))
			continue;
		FUNC1(&scl->scl_lock);
		if (rw == RW_READER) {
			if (scl->scl_writer || scl->scl_write_wanted) {
				FUNC2(&scl->scl_lock);
				FUNC3(spa, locks & ((1 << i) - 1),
				    tag);
				return (0);
			}
		} else {
			FUNC0(scl->scl_writer != curthread);
			if (!FUNC5(&scl->scl_count)) {
				FUNC2(&scl->scl_lock);
				FUNC3(spa, locks & ((1 << i) - 1),
				    tag);
				return (0);
			}
			scl->scl_writer = curthread;
		}
		(void) FUNC4(&scl->scl_count, tag);
		FUNC2(&scl->scl_lock);
	}
	return (1);
}