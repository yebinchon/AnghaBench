#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* flavors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(void)
{
	unsigned int i;

	FUNC2(stderr,
	    "usage: %s [-bCcDdejLlMnPqrStUuWx] [-i|-m] [-E tags]\n"
	    "\t\t[-f spec] [-f spec]\n"
	    "\t\t[-I tags] [-K keywords] [-k keywords] [-N dbdir] [-p path]\n"
	    "\t\t[-R keywords] [-s seed] [-X exclude-file]\n"
	    "\t\t[-F flavor]\n",
	    FUNC3());
	FUNC2(stderr, "\nflavors:");
	for (i = 0; i < FUNC0(flavors); i++)
		FUNC2(stderr, " %s", flavors[i].name);
	FUNC2(stderr, "\n");
	FUNC1(1);
}