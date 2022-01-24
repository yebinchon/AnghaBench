#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmobjlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_WANTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcv ; 
 TYPE_2__* testpg ; 
 int threadrun ; 
 TYPE_1__* uobj ; 

__attribute__((used)) static void
FUNC4(void *arg)
{

	FUNC3(uobj->vmobjlock);
	threadrun = true;
	FUNC1(&tcv);
	testpg->flags |= PG_WANTED;
	FUNC0(testpg, uobj->vmobjlock, false, "tw", 0);
	FUNC2(0);
}