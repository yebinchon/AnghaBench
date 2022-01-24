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
struct att_counter_set {int /*<<< orphan*/  flags_list; int /*<<< orphan*/  mode_list; int /*<<< orphan*/  gid_list; int /*<<< orphan*/  uid_list; } ;
struct mtree_writer {struct att_counter_set acs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct mtree_writer *mtree)
{
	struct att_counter_set *acs = &mtree->acs;

	FUNC0(&acs->uid_list);
	FUNC0(&acs->gid_list);
	FUNC0(&acs->mode_list);
	FUNC0(&acs->flags_list);
}