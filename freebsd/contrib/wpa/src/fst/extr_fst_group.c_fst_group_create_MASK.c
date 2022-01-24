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
struct fst_group {int /*<<< orphan*/  global_groups_lentry; int /*<<< orphan*/  group_id; int /*<<< orphan*/  ifaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fst_group*) ; 
 int /*<<< orphan*/  fst_global_groups_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_group*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  on_group_created ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 struct fst_group* FUNC6 (int) ; 

struct fst_group * FUNC7(const char *group_id)
{
	struct fst_group *g;

	g = FUNC6(sizeof(*g));
	if (g == NULL) {
		FUNC3(MSG_ERROR, "%s: Cannot alloc group", group_id);
		return NULL;
	}

	FUNC1(&g->ifaces);
	FUNC5(g->group_id, group_id, sizeof(g->group_id));

	FUNC0(&fst_global_groups_list, &g->global_groups_lentry);
	FUNC4(g, MSG_DEBUG, "instance created");

	FUNC2(on_group_created, g);

	return g;
}