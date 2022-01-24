#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* c_name; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 TYPE_1__** consoles ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(const char *string)
{
    int		cons, found, failed;
    char	*curpos, *dup, *next;

    dup = next = FUNC3(string);
    found = failed = 0;
    while (next != NULL) {
	curpos = FUNC4(&next, " ,");
	if (*curpos != '\0') {
	    cons = FUNC0(curpos);
	    if (cons == -1) {
		FUNC2("console %s is invalid!\n", curpos);
		failed++;
	    } else {
		found++;
	    }
	}
    }

    FUNC1(dup);

    if (found == 0)
	FUNC2("no valid consoles!\n");

    if (found == 0 || failed != 0) {
	FUNC2("Available consoles:\n");
	for (cons = 0; consoles[cons] != NULL; cons++)
	    FUNC2("    %s\n", consoles[cons]->c_name);
    }

    return (found);
}