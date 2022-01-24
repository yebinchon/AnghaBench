#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct worker {int /*<<< orphan*/  cmd; } ;
struct ub_stats_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_stats_info*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct worker*,struct ub_stats_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  worker_cmd_stats ; 
 int /*<<< orphan*/  worker_cmd_stats_noreset ; 
 int /*<<< orphan*/  FUNC6 (struct worker*,int /*<<< orphan*/ ) ; 

void FUNC7(struct worker* worker, struct worker* who,
	struct ub_stats_info* s, int reset)
{
	uint8_t *reply = NULL;
	uint32_t len = 0;
	if(worker == who) {
		/* just fill it in */
		FUNC3(worker, s, reset);
		return;
	}
	/* communicate over tube */
	FUNC5(VERB_ALGO, "write stats cmd");
	if(reset)
		FUNC6(who, worker_cmd_stats);
	else 	FUNC6(who, worker_cmd_stats_noreset);
	FUNC5(VERB_ALGO, "wait for stats reply");
	if(!FUNC4(worker->cmd, &reply, &len, 0))
		FUNC0("failed to read stats over cmd channel");
	if(len != (uint32_t)sizeof(*s))
		FUNC0("stats on cmd channel wrong length %d %d",
			(int)len, (int)sizeof(*s));
	FUNC2(s, reply, (size_t)len);
	FUNC1(reply);
}