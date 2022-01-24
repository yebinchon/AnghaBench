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
struct iter_env {int max_dependency_depth; int* target_fetch_policy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_env*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(struct iter_env* ie, const char* str)
{
	int count = FUNC1(str);
	if(count < 1) {
		FUNC3("Cannot parse target fetch policy: \"%s\"", str);
		return 0;
	}
	ie->max_dependency_depth = count - 1;
	ie->target_fetch_policy = (int*)FUNC0(
		(size_t)ie->max_dependency_depth+1, sizeof(int));
	if(!ie->target_fetch_policy) {
		FUNC3("alloc fetch policy: out of memory");
		return 0;
	}
	FUNC2(ie, str);
	return 1;
}