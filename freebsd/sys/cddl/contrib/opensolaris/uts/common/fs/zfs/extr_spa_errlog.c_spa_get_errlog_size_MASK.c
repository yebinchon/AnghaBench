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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ spa_errlog_scrub; scalar_t__ spa_errlog_last; int /*<<< orphan*/  spa_errlist_lock; int /*<<< orphan*/  spa_errlist_scrub; int /*<<< orphan*/  spa_errlist_last; int /*<<< orphan*/  spa_errlog_lock; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_scrub_finished; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

uint64_t
FUNC4(spa_t *spa)
{
	uint64_t total = 0, count;

	FUNC1(&spa->spa_errlog_lock);
	if (spa->spa_errlog_scrub != 0 &&
	    FUNC3(spa->spa_meta_objset, spa->spa_errlog_scrub,
	    &count) == 0)
		total += count;

	if (spa->spa_errlog_last != 0 && !spa->spa_scrub_finished &&
	    FUNC3(spa->spa_meta_objset, spa->spa_errlog_last,
	    &count) == 0)
		total += count;
	FUNC2(&spa->spa_errlog_lock);

	FUNC1(&spa->spa_errlist_lock);
	total += FUNC0(&spa->spa_errlist_last);
	total += FUNC0(&spa->spa_errlist_scrub);
	FUNC2(&spa->spa_errlist_lock);

	return (total);
}