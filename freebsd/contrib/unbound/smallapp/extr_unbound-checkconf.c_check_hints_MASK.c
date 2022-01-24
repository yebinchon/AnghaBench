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
struct iter_hints {int dummy; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_hints*,struct config_file*) ; 
 struct iter_hints* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct iter_hints*) ; 

__attribute__((used)) static void
FUNC4(struct config_file* cfg)
{
	struct iter_hints* hints = FUNC2();
	if(!hints || !FUNC1(hints, cfg)) {
		FUNC0("Could not set root or stub hints");
	}
	FUNC3(hints);
}