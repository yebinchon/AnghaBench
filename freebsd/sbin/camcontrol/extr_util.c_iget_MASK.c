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
struct get_hook {size_t got; size_t argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

int
FUNC5(void *hook, char *name)
{
	struct get_hook *h = (struct get_hook *)hook;
	int arg;

	if (h->got >= h->argc)
	{
		FUNC1(stderr, "Expecting an integer argument.\n");
		FUNC4(0);
		FUNC0(1);
	}
	arg = FUNC3(h->argv[h->got], 0, 0);
	h->got++;

	if (verbose && name && *name)
		FUNC2("%s: %d\n", name, arg);

	return arg;
}