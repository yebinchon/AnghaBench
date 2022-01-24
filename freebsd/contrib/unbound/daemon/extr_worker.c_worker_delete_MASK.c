#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  scratch; int /*<<< orphan*/  probe_timer; int /*<<< orphan*/  hints; int /*<<< orphan*/  fwds; int /*<<< orphan*/  scratch_buffer; scalar_t__ mesh; } ;
struct worker {scalar_t__ thread_num; int /*<<< orphan*/  scratchpad; TYPE_1__ env; int /*<<< orphan*/  alloc; int /*<<< orphan*/  rndstate; int /*<<< orphan*/  base; struct worker* ports; int /*<<< orphan*/  stat_timer; int /*<<< orphan*/  cmd; int /*<<< orphan*/  comsig; int /*<<< orphan*/  back; int /*<<< orphan*/  front; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 scalar_t__ VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct worker*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct worker*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC17 (struct worker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct worker*) ; 

void 
FUNC19(struct worker* worker)
{
	if(!worker) 
		return;
	if(worker->env.mesh && verbosity >= VERB_OPS) {
		FUNC13(&worker->stats, worker, worker->thread_num);
		FUNC9(worker->env.mesh, "mesh has");
		FUNC17(worker, NULL);
	}
	FUNC11(worker->back);
	FUNC8(worker->env.mesh);
	FUNC14(worker->env.scratch_buffer);
	FUNC4(worker->env.fwds);
	FUNC6(worker->env.hints);
	FUNC7(worker->front);
	FUNC10(worker->back);
	FUNC2(worker->comsig);
	FUNC15(worker->cmd);
	FUNC3(worker->stat_timer);
	FUNC3(worker->env.probe_timer);
	FUNC5(worker->ports);
	if(worker->thread_num == 0) {
#ifdef UB_ON_WINDOWS
		wsvc_desetup_worker(worker);
#endif /* UB_ON_WINDOWS */
	}
	FUNC1(worker->base);
	FUNC16(worker->rndstate);
	FUNC0(&worker->alloc);
	FUNC12(worker->env.scratch);
	FUNC12(worker->scratchpad);
	FUNC5(worker);
}