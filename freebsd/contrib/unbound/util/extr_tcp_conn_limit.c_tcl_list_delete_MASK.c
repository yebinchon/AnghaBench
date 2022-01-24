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
struct tcl_list {int /*<<< orphan*/  region; int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcl_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcl_list_free_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct tcl_list* tcl)
{
	if(!tcl)
		return;
	FUNC2(&tcl->tree, tcl_list_free_node, NULL);
	FUNC1(tcl->region);
	FUNC0(tcl);
}