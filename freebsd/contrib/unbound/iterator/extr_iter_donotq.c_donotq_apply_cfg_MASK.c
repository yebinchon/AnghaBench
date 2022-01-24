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
struct iter_donotq {int /*<<< orphan*/  tree; int /*<<< orphan*/  region; } ;
struct config_file {scalar_t__ do_ip6; scalar_t__ donotquery_localhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_donotq*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iter_donotq*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int 
FUNC5(struct iter_donotq* dq, struct config_file* cfg)
{
	FUNC4(dq->region);
	FUNC0(&dq->tree);
	if(!FUNC3(dq, cfg))
		return 0;
	if(cfg->donotquery_localhost) {
		if(!FUNC2(dq, "127.0.0.0/8"))
			return 0;
		if(cfg->do_ip6) {
			if(!FUNC2(dq, "::1"))
				return 0;
		}
	}
	FUNC1(&dq->tree);
	return 1;
}