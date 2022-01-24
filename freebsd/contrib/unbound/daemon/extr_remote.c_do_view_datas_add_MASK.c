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
struct view {int /*<<< orphan*/  lock; scalar_t__ local_zones; } ;
struct TYPE_2__ {int /*<<< orphan*/  views; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct view* FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(RES* ssl, struct worker* worker, char* arg)
{
	struct view* v;
	v = FUNC4(worker->daemon->views,
		arg, 1 /* get write lock*/);
	if(!v) {
		FUNC3(ssl,"no view with name: %s\n", arg);
		return;
	}
	if(!v->local_zones) {
		if(!(v->local_zones = FUNC1())){
			FUNC2(&v->lock);
			FUNC3(ssl,"error out of memory\n");
			return;
		}
	}
	FUNC0(ssl, v->local_zones);
	FUNC2(&v->lock);
}