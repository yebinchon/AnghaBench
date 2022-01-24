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
struct togglelist {char* actionexplanation; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ) ;scalar_t__* variable; } ;
struct setlist {char* name; char* help; int /*<<< orphan*/ * charp; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct togglelist* FUNC1 (char*) ; 
 struct setlist* Setlist ; 
 int /*<<< orphan*/  _POSIX_VDISABLE ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct setlist* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(int argc, char *argv[])
{
    struct setlist *ct;
    struct togglelist *c;
    char *name;

    if (argc < 2) {
	FUNC3(stderr,
	    "Need an argument to 'unset' command.  'unset ?' for help.\n");
	return 0;
    }
    if (FUNC5(argv[1], "?") || FUNC5(argv[1], "help")) {
	for (ct = Setlist; ct->name; ct++)
	    FUNC6("%-15s %s\n", ct->name, ct->help);
	FUNC6("\n");
	FUNC7(0);
	FUNC6("%-15s %s\n", "?", "display help information");
	return 0;
    }

    argc--;
    argv++;
    while (argc--) {
	name = *argv++;
	ct = FUNC4(name);
	if (ct == 0) {
	    c = FUNC1(name);
	    if (c == 0) {
		FUNC3(stderr, "'%s': unknown argument ('unset ?' for help).\n",
			name);
		return 0;
	    } else if (FUNC0((void *)c)) {
		FUNC3(stderr, "'%s': ambiguous argument ('unset ?' for help).\n",
			name);
		return 0;
	    }
	    if (c->variable) {
		*c->variable = 0;
		if (c->actionexplanation) {
		    FUNC6("%s %s.\n", *c->variable? "Will" : "Won't",
							c->actionexplanation);
		}
	    }
	    if (c->handler)
		(*c->handler)(0);
	} else if (FUNC0((void *)ct)) {
	    FUNC3(stderr, "'%s': ambiguous argument ('unset ?' for help).\n",
			name);
	    return 0;
	} else if (ct->handler) {
	    (*ct->handler)(0);
	    FUNC6("%s reset to \"%s\".\n", ct->name, (char *)ct->charp);
	} else {
	    *(ct->charp) = _POSIX_VDISABLE;
	    FUNC6("%s character is '%s'.\n", ct->name, FUNC2(*(ct->charp)));
	}
    }
    return 1;
}