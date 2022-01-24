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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const* const,char*,char const* const,char*,char const* const,char*,char const* const,char const* const,char*,char const* const,char const* const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2()
{
	const char *const common =
	    "[-b blocksize] [-f file | -P pipecommand] [-s fileno]";
	const char *const fileell = "[file ...]";

	(void)FUNC1(stderr, "usage:\t%s %s\n\t%s %s\n\t%s %s\n"
	    "\t%s %s %s\n\t%s %s %s\n",
	    "restore -i [-dhmNuvy]", common,
	    "restore -R [-dNuvy]", common,
	    "restore -r [-dNuvy]", common,
	    "restore -t [-dhNuvy]", common, fileell,
	    "restore -x [-dhmNuvy]", common, fileell);
	FUNC0(1);
}