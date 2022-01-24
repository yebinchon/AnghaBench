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
 int /*<<< orphan*/  X_STARTUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
		"usage: dump [-0123456789acLnSu] [-B records] [-b blocksize] [-C cachesize]\n"
		"            [-D dumpdates] [-d density] [-f file | -P pipecommand] [-h level]\n"
		"            [-s feet] [-T date] filesystem\n"
		"       dump -W | -w\n");
	FUNC0(X_STARTUP);
}