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
typedef  int /*<<< orphan*/  mapped ;
typedef  int /*<<< orphan*/  TERMTYPE ;

/* Variables and functions */
 size_t FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* acs_chars ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(TERMTYPE *tp)
{
    if (FUNC1(acs_chars)) {
	const char *boxes = "lmkjtuvwqxn";
	char mapped[256];
	char missing[256];
	const char *p;
	char *q;

	FUNC4(mapped, 0, sizeof(mapped));
	for (p = acs_chars; *p != '\0'; p += 2) {
	    if (p[1] == '\0') {
		FUNC2("acsc has odd number of characters");
		break;
	    }
	    mapped[FUNC0(p[0])] = p[1];
	}

	if (mapped[FUNC0('I')] && !mapped[FUNC0('i')]) {
	    FUNC2("acsc refers to 'I', which is probably an error");
	}

	for (p = boxes, q = missing; *p != '\0'; ++p) {
	    if (!mapped[FUNC0(p[0])]) {
		*q++ = p[0];
	    }
	}
	*q = '\0';

	FUNC3(FUNC6(missing) <= FUNC6(boxes));
	if (*missing != '\0' && FUNC5(missing, boxes)) {
	    FUNC2("acsc is missing some line-drawing mapping: %s", missing);
	}
    }
}