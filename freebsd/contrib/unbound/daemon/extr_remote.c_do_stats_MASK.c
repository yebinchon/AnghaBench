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
typedef  int /*<<< orphan*/  total ;
struct ub_stats_info {double mesh_time_median; } ;
struct daemon_remote {TYPE_2__* worker; } ;
struct daemon {int num; TYPE_1__* cfg; int /*<<< orphan*/ * workers; } ;
struct TYPE_6__ {struct daemon* daemon; } ;
struct TYPE_5__ {scalar_t__ stat_extended; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_stats_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,struct daemon*,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ub_stats_info*,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,struct ub_stats_info*,int) ; 

__attribute__((used)) static void
FUNC10(RES* ssl, struct daemon_remote* rc, int reset)
{
	struct daemon* daemon = rc->worker->daemon;
	struct ub_stats_info total;
	struct ub_stats_info s;
	int i;
	FUNC1(&total, 0, sizeof(total));
	FUNC0(daemon->num > 0);
	/* gather all thread statistics in one place */
	for(i=0; i<daemon->num; i++) {
		FUNC9(rc->worker, daemon->workers[i], &s, reset);
		if(!FUNC6(ssl, i, &s))
			return;
		if(i == 0)
			total = s;
		else	FUNC8(&total, &s);
	}
	/* print the thread statistics */
	total.mesh_time_median /= (double)daemon->num;
	if(!FUNC5(ssl, "total", &total)) 
		return;
	if(!FUNC7(ssl, rc->worker, reset))
		return;
	if(daemon->cfg->stat_extended) {
		if(!FUNC4(ssl, rc->worker, daemon, &total)) 
			return;
		if(!FUNC3(ssl, &total))
			return;
		if(!FUNC2(ssl, &total))
			return;
	}
}