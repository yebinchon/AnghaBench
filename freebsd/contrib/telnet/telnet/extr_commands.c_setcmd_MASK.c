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
struct togglelist {int* variable; char* actionexplanation; int /*<<< orphan*/  (* handler ) (int) ;} ;
struct setlist {char* name; char* help; scalar_t__* charp; int /*<<< orphan*/  (* handler ) (char*) ;} ;
typedef  scalar_t__ cc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct togglelist* FUNC1 (char*) ; 
 struct setlist* Setlist ; 
 int _POSIX_VDISABLE ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 struct setlist* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(int argc, char *argv[])
{
    int value;
    struct setlist *ct;
    struct togglelist *c;

    if (argc < 2 || argc > 3) {
	FUNC6("Format is 'set Name Value'\n'set ?' for help.\n");
	return 0;
    }
    if ((argc == 2) && (FUNC5(argv[1], "?") || FUNC5(argv[1], "help"))) {
	for (ct = Setlist; ct->name; ct++)
	    FUNC6("%-15s %s\n", ct->name, ct->help);
	FUNC6("\n");
	FUNC7(1);
	FUNC6("%-15s %s\n", "?", "display help information");
	return 0;
    }

    ct = FUNC4(argv[1]);
    if (ct == 0) {
	c = FUNC1(argv[1]);
	if (c == 0) {
	    FUNC3(stderr, "'%s': unknown argument ('set ?' for help).\n",
			argv[1]);
	    return 0;
	} else if (FUNC0((void *)c)) {
	    FUNC3(stderr, "'%s': ambiguous argument ('set ?' for help).\n",
			argv[1]);
	    return 0;
	}
	if (c->variable) {
	    if ((argc == 2) || (FUNC10("on", argv[2]) == 0))
		*c->variable = 1;
	    else if (FUNC10("off", argv[2]) == 0)
		*c->variable = 0;
	    else {
		FUNC6("Format is 'set togglename [on|off]'\n'set ?' for help.\n");
		return 0;
	    }
	    if (c->actionexplanation) {
		FUNC6("%s %s.\n", *c->variable? "Will" : "Won't",
							c->actionexplanation);
	    }
	}
	if (c->handler)
	    (*c->handler)(1);
    } else if (argc != 3) {
	FUNC6("Format is 'set Name Value'\n'set ?' for help.\n");
	return 0;
    } else if (FUNC0((void *)ct)) {
	FUNC3(stderr, "'%s': ambiguous argument ('set ?' for help).\n",
			argv[1]);
	return 0;
    } else if (ct->handler) {
	(*ct->handler)(argv[2]);
	FUNC6("%s set to \"%s\".\n", ct->name, (char *)ct->charp);
    } else {
	if (FUNC10("off", argv[2])) {
	    value = FUNC9(argv[2]);
	} else {
	    value = _POSIX_VDISABLE;
	}
	*(ct->charp) = (cc_t)value;
	FUNC6("%s character is '%s'.\n", ct->name, FUNC2(*(ct->charp)));
    }
    FUNC8();
    return 1;
}