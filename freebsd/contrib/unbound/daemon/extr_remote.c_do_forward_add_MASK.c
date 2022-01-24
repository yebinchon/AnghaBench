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
struct TYPE_2__ {scalar_t__ anchors; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_forwards*,int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,struct delegpt**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC7(RES* ssl, struct worker* worker, char* args)
{
	struct iter_forwards* fwd = worker->env.fwds;
	int insecure = 0;
	uint8_t* nm = NULL;
	struct delegpt* dp = NULL;
	if(!FUNC4(ssl, args, &nm, &dp, &insecure, NULL))
		return;
	if(insecure && worker->env.anchors) {
		if(!FUNC0(worker->env.anchors, LDNS_RR_CLASS_IN,
			nm)) {
			(void)FUNC6(ssl, "error out of memory\n");
			FUNC1(dp);
			FUNC3(nm);
			return;
		}
	}
	if(!FUNC2(fwd, LDNS_RR_CLASS_IN, dp)) {
		(void)FUNC6(ssl, "error out of memory\n");
		FUNC3(nm);
		return;
	}
	FUNC3(nm);
	FUNC5(ssl);
}