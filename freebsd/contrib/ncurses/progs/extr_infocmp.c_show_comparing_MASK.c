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
#define  C_COMMON 130 
#define  C_DIFFERENCE 129 
#define  C_NAND 128 
 char* _nc_progname ; 
 int compare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ itrace ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(char **names)
{
    if (itrace) {
	switch (compare) {
	case C_DIFFERENCE:
	    (void) FUNC0(stderr, "%s: dumping differences\n", _nc_progname);
	    break;

	case C_COMMON:
	    (void) FUNC0(stderr, "%s: dumping common capabilities\n", _nc_progname);
	    break;

	case C_NAND:
	    (void) FUNC0(stderr, "%s: dumping differences\n", _nc_progname);
	    break;
	}
    }
    if (*names) {
	FUNC1("comparing %s", *names++);
	if (*names) {
	    FUNC1(" to %s", *names++);
	    while (*names) {
		FUNC1(", %s", *names++);
	    }
	}
	FUNC1(".\n");
    }
}