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
struct TYPE_3__ {unsigned int qp0_mads_outstanding; int /*<<< orphan*/  event; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ osm_stats_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_NO_TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int osm_exit_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(osm_stats_t * stats)
{
#ifdef HAVE_LIBPTHREAD
	pthread_mutex_lock(&stats->mutex);
	while (stats->qp0_mads_outstanding && !osm_exit_flag)
		pthread_cond_wait(&stats->cond, &stats->mutex);
	pthread_mutex_unlock(&stats->mutex);
#else
	while (1) {
		unsigned count = stats->qp0_mads_outstanding;
		if (!count || osm_exit_flag)
			break;
		FUNC0(&stats->event, EVENT_NO_TIMEOUT, TRUE);
	}
#endif
	return osm_exit_flag;
}