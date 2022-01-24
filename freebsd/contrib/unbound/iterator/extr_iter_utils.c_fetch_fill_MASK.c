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
struct iter_env {int max_dependency_depth; int /*<<< orphan*/ * target_fetch_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC2(struct iter_env* ie, const char* str)
{
	char* s = (char*)str, *e;
	int i;
	for(i=0; i<ie->max_dependency_depth+1; i++) {
		ie->target_fetch_policy[i] = FUNC1(s, &e, 10);
		if(s == e)
			FUNC0("cannot parse fetch policy number %s", s);
		s = e;
	}
}