#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mesh; } ;
struct worker {TYPE_2__* daemon; TYPE_1__ env; int /*<<< orphan*/  thread_num; int /*<<< orphan*/  stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat_cumulative; scalar_t__ shm_enable; } ;
struct TYPE_5__ {TYPE_3__* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct worker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct worker*) ; 
 int /*<<< orphan*/  FUNC3 (struct worker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct worker*) ; 
 int /*<<< orphan*/  FUNC5 (struct worker*) ; 

void FUNC6(void* arg)
{
	struct worker* worker = (struct worker*)arg;
	FUNC1(&worker->stats, worker, worker->thread_num);
	FUNC0(worker->env.mesh, "mesh has");
	FUNC3(worker, NULL);
	/* SHM is enabled, process data to SHM */
	if (worker->daemon->cfg->shm_enable) {
		FUNC2(worker);
	}
	if(!worker->daemon->cfg->stat_cumulative) {
		FUNC5(worker);
	}
	/* start next timer */
	FUNC4(worker);
}