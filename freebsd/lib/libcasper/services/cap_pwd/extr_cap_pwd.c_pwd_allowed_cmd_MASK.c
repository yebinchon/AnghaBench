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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static bool
FUNC3(const nvlist_t *limits, const char *cmd)
{

	if (limits == NULL)
		return (true);

	/*
	 * If no limit was set on allowed commands, then all commands
	 * are allowed.
	 */
	if (!FUNC1(limits, "cmds"))
		return (true);

	limits = FUNC2(limits, "cmds");
	return (FUNC0(limits, cmd));
}