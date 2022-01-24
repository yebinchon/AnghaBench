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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  mesh; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*,int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iter_forwards*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(RES* ssl, struct worker* worker, char* args)
{
	struct iter_forwards* fwd = worker->env.fwds;
	uint8_t* root = (uint8_t*)"\000";
	if(!fwd) {
		(void)FUNC6(ssl, "error: structure not allocated\n");
		return;
	}
	if(args == NULL || args[0] == 0) {
		(void)FUNC4(ssl, fwd, root);
		return;
	}
	/* set root forwards for this thread. since we are in remote control
	 * the actual mesh is not running, so we can freely edit it. */
	/* delete all the existing queries first */
	FUNC2(worker->env.mesh);
	if(FUNC7(args, "off") == 0) {
		FUNC1(fwd, LDNS_RR_CLASS_IN, root);
	} else {
		struct delegpt* dp;
		if(!(dp = FUNC3(ssl, args, root, 0)))
			return;
		if(!FUNC0(fwd, LDNS_RR_CLASS_IN, dp)) {
			(void)FUNC6(ssl, "error out of memory\n");
			return;
		}
	}
	FUNC5(ssl);
}