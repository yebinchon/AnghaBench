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
struct iter_forwards {int /*<<< orphan*/  tree; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fwd_cmp ; 
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_forwards*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iter_forwards*,struct config_file*) ; 

int 
FUNC5(struct iter_forwards* fwd, struct config_file* cfg)
{
	FUNC0(fwd);
	fwd->tree = FUNC3(fwd_cmp);
	if(!fwd->tree)
		return 0;

	/* read forward zones */
	if(!FUNC4(fwd, cfg))
		return 0;
	if(!FUNC2(fwd, cfg))
		return 0;
	FUNC1(fwd);
	return 1;
}