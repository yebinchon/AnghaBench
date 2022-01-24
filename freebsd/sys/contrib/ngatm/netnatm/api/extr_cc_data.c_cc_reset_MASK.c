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
struct ccdata {scalar_t__ cookie; int /*<<< orphan*/  orphaned_conns; int /*<<< orphan*/  user_list; int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ccdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct ccdata *cc)
{

	while (!FUNC1(&cc->user_list))
		FUNC8(FUNC2(&cc->user_list));

	while (!FUNC3(&cc->port_list))
		FUNC6(FUNC4(&cc->port_list), 1);

	while (!FUNC1(&cc->orphaned_conns))
		FUNC5(FUNC2(&cc->orphaned_conns));

	FUNC0(FUNC1(&cc->user_list),
	    ("user list not empty"));
	FUNC0(FUNC1(&cc->orphaned_conns),
	    ("still orphaned conns"));

	FUNC7(cc);

	cc->cookie = 0;
}