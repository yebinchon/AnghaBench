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
struct togglelist {int* variable; char* actionexplanation; int (* handler ) (int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct togglelist* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
    int retval = 1;
    char *name;
    struct togglelist *c;

    if (argc < 2) {
	FUNC2(stderr,
	    "Need an argument to 'toggle' command.  'toggle ?' for help.\n");
	return 0;
    }
    argc--;
    argv++;
    while (argc--) {
	name = *argv++;
	c = FUNC1(name);
	if (FUNC0((void *)c)) {
	    FUNC2(stderr, "'%s': ambiguous argument ('toggle ?' for help).\n",
					name);
	    return 0;
	} else if (c == 0) {
	    FUNC2(stderr, "'%s': unknown argument ('toggle ?' for help).\n",
					name);
	    return 0;
	} else {
	    if (c->variable) {
		*c->variable = !*c->variable;		/* invert it */
		if (c->actionexplanation) {
		    FUNC3("%s %s.\n", *c->variable? "Will" : "Won't",
							c->actionexplanation);
		}
	    }
	    if (c->handler) {
		retval &= (*c->handler)(-1);
	    }
	}
    }
    return retval;
}