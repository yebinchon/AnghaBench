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
struct worker {TYPE_1__* daemon; } ;
struct view {int /*<<< orphan*/  lock; int /*<<< orphan*/  local_zones; } ;
struct TYPE_2__ {int /*<<< orphan*/  views; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 struct view* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(RES* ssl, struct worker* worker, char* arg)
{
	char* arg2;
	struct view* v;
	if(!FUNC1(ssl, arg, &arg2))
		return;
	v = FUNC5(worker->daemon->views,
		arg, 1 /* get write lock*/);
	if(!v) {
		FUNC4(ssl,"no view with name: %s\n", arg);
		return;
	}
	if(!v->local_zones) {
		FUNC2(&v->lock);
		FUNC3(ssl);
		return;
	}
	FUNC0(ssl, v->local_zones, arg2);
	FUNC2(&v->lock);
}