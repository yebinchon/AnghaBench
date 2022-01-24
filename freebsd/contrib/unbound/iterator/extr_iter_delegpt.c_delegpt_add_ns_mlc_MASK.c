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
typedef  scalar_t__ uint8_t ;
struct delegpt_ns {size_t namelen; scalar_t__ done_pside6; scalar_t__ done_pside4; scalar_t__ lame; scalar_t__ got6; scalar_t__ got4; scalar_t__ resolved; struct delegpt_ns* next; int /*<<< orphan*/  name; } ;
struct delegpt {struct delegpt_ns* nslist; int /*<<< orphan*/  dp_type_mlc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct delegpt*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,size_t) ; 

int FUNC6(struct delegpt* dp, uint8_t* name, uint8_t lame)
{
	struct delegpt_ns* ns;
	size_t len;
	(void)FUNC1(name, &len);
	FUNC3(dp->dp_type_mlc);
	/* slow check for duplicates to avoid counting failures when
	 * adding the same server as a dependency twice */
	if(FUNC0(dp, name, len))
		return 1;
	ns = (struct delegpt_ns*)FUNC4(sizeof(struct delegpt_ns));
	if(!ns)
		return 0;
	ns->namelen = len;
	ns->name = FUNC5(name, ns->namelen);
	if(!ns->name) {
		FUNC2(ns);
		return 0;
	}
	ns->next = dp->nslist;
	dp->nslist = ns;
	ns->resolved = 0;
	ns->got4 = 0;
	ns->got6 = 0;
	ns->lame = (uint8_t)lame;
	ns->done_pside4 = 0;
	ns->done_pside6 = 0;
	return 1;
}