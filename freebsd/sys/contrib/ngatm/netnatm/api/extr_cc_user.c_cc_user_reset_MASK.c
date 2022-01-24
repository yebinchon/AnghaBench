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
struct ccuser {scalar_t__ aborted; scalar_t__ queue_max; scalar_t__ queue_act; int /*<<< orphan*/  config; TYPE_1__* accepted; int /*<<< orphan*/ * sap; int /*<<< orphan*/  connq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * acceptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USER_NULL ; 
 int /*<<< orphan*/  USER_P2P ; 
 int /*<<< orphan*/  FUNC3 (struct ccuser*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccuser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ccuser *user)
{

	FUNC0(FUNC2(&user->connq), ("connq not empty"));

	if (user->sap != NULL) {
		FUNC1(user->sap);
		user->sap = NULL;
	}

	if (user->accepted != NULL) {
		user->accepted->acceptor = NULL;
		user->accepted = NULL;
	}
	user->config = USER_P2P;
	user->queue_act = 0;
	user->queue_max = 0;
	user->aborted = 0;

	FUNC4(user, USER_NULL);

	FUNC3(user);
}