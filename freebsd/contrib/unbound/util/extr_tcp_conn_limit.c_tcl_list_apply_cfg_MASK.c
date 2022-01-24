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
struct tcl_list {int /*<<< orphan*/  tree; int /*<<< orphan*/  region; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcl_list*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct tcl_list* tcl, struct config_file* cfg)
{
	FUNC3(tcl->region);
	FUNC0(&tcl->tree);
	if(!FUNC2(tcl, cfg))
		return 0;
	FUNC1(&tcl->tree);
	return 1;
}