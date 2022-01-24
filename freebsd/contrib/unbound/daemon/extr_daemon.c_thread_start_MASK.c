#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct worker {int thread_num; TYPE_2__* daemon; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {int num_ports; int /*<<< orphan*/ * ports; TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ so_reuseport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct worker*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct worker*) ; 

__attribute__((used)) static void* 
FUNC7(void* arg)
{
	struct worker* worker = (struct worker*)arg;
	int port_num = 0;
	FUNC2(&worker->thread_num);
	FUNC4();
#ifdef THREADS_DISABLED
	/* close pipe ends used by main */
	tube_close_write(worker->cmd);
	close_other_pipes(worker->daemon, worker->thread_num);
#endif
#ifdef SO_REUSEPORT
	if(worker->daemon->cfg->so_reuseport)
		port_num = worker->thread_num % worker->daemon->num_ports;
	else
		port_num = 0;
#endif
	if(!FUNC5(worker, worker->daemon->cfg,
			worker->daemon->ports[port_num], 0))
		FUNC1("Could not initialize thread");

	FUNC6(worker);
	return NULL;
}