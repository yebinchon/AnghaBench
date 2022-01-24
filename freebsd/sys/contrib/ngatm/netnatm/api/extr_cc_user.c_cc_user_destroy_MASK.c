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
struct ccuser {struct ccuser* sap; int /*<<< orphan*/  name; TYPE_1__* cc; } ;
struct TYPE_2__ {int log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccuser*) ; 
 int CCLOG_USER_INST ; 
 int /*<<< orphan*/  FUNC1 (struct ccuser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccuser*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ccuser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccuser*) ; 
 int /*<<< orphan*/  node_link ; 

void
FUNC5(struct ccuser *user)
{

	if (user->cc->log & CCLOG_USER_INST)
		FUNC3(user, "destroy '%s'", user->name);

	FUNC2(user, NULL);

	if (user->sap != NULL)
		FUNC0(user->sap);

	FUNC4(user);

	FUNC1(user, node_link);
	FUNC0(user);
}