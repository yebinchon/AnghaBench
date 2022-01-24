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
typedef  int /*<<< orphan*/  uint8_t ;
struct worker {TYPE_2__* daemon; } ;
struct ub_stats_info {int dummy; } ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_4__ {TYPE_1__** workers; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct worker*,struct ub_stats_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct worker* worker, int reset)
{
	struct ub_stats_info s;
	FUNC1(worker, &s, reset);
	FUNC3(VERB_ALGO, "write stats replymsg");
	if(!FUNC2(worker->daemon->workers[0]->cmd, 
		(uint8_t*)&s, sizeof(s), 0))
		FUNC0("could not write stat values over cmd channel");
}