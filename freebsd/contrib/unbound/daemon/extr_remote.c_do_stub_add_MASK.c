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
struct TYPE_2__ {scalar_t__ anchors; int /*<<< orphan*/  hints; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC3 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct delegpt*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,struct delegpt**,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC10(RES* ssl, struct worker* worker, char* args)
{
	struct iter_forwards* fwd = worker->env.fwds;
	int insecure = 0, prime = 0;
	uint8_t* nm = NULL;
	struct delegpt* dp = NULL;
	if(!FUNC7(ssl, args, &nm, &dp, &insecure, &prime))
		return;
	if(insecure && worker->env.anchors) {
		if(!FUNC0(worker->env.anchors, LDNS_RR_CLASS_IN,
			nm)) {
			(void)FUNC9(ssl, "error out of memory\n");
			FUNC2(dp);
			FUNC5(nm);
			return;
		}
	}
	if(!FUNC3(fwd, LDNS_RR_CLASS_IN, nm)) {
		if(insecure && worker->env.anchors)
			FUNC1(worker->env.anchors,
				LDNS_RR_CLASS_IN, nm);
		(void)FUNC9(ssl, "error out of memory\n");
		FUNC2(dp);
		FUNC5(nm);
		return;
	}
	if(!FUNC6(worker->env.hints, LDNS_RR_CLASS_IN, dp, !prime)) {
		(void)FUNC9(ssl, "error out of memory\n");
		FUNC4(fwd, LDNS_RR_CLASS_IN, nm);
		if(insecure && worker->env.anchors)
			FUNC1(worker->env.anchors,
				LDNS_RR_CLASS_IN, nm);
		FUNC5(nm);
		return;
	}
	FUNC5(nm);
	FUNC8(ssl);
}