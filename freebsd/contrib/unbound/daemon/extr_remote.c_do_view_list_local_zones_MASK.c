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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 struct view* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(RES* ssl, struct worker* worker, char* arg)
{
	struct view* v = FUNC3(worker->daemon->views,
		arg, 0 /* get read lock*/);
	if(!v) {
		FUNC2(ssl,"no view with name: %s\n", arg);
		return;
	}
	if(v->local_zones) {
		FUNC0(ssl, v->local_zones);
	}
	FUNC1(&v->lock);
}