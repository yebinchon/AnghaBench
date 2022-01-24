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
struct fst_session {int dummy; } ;
struct fst_group {int /*<<< orphan*/  ifaces; int /*<<< orphan*/  global_groups_lentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fst_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_group*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_session*) ; 
 struct fst_session* FUNC6 (struct fst_group*) ; 
 int /*<<< orphan*/  on_group_deleted ; 
 int /*<<< orphan*/  FUNC7 (struct fst_group*) ; 

void FUNC8(struct fst_group *group)
{
	struct fst_session *s;

	FUNC1(&group->global_groups_lentry);
	FUNC0(FUNC2(&group->ifaces));
	FUNC3(on_group_deleted, group);
	FUNC4(group, MSG_DEBUG, "instance deleted");
	while ((s = FUNC6(group)) != NULL)
		FUNC5(s);
	FUNC7(group);
}