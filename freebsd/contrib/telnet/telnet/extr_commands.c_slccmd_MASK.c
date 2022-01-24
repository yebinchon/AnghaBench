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
struct slclist {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct slclist* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
    struct slclist *c;

    if (argc != 2) {
	FUNC1(stderr,
	    "Need an argument to 'slc' command.  'slc ?' for help.\n");
	return 0;
    }
    c = FUNC2(argv[1]);
    if (c == 0) {
	FUNC1(stderr, "'%s': unknown argument ('slc ?' for help).\n",
    				argv[1]);
	return 0;
    }
    if (FUNC0((void *)c)) {
	FUNC1(stderr, "'%s': ambiguous argument ('slc ?' for help).\n",
    				argv[1]);
	return 0;
    }
    (*c->handler)(c->arg);
    FUNC3();
    return 1;
}