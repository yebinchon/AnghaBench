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
struct TYPE_3__ {char* from; char* to; } ;
typedef  TYPE_1__ assoc ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  MAX_TERMINFO_LENGTH ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4(const assoc * table, char *dst, char *src)
{
    char *result = 0;
    const char *ep = FUNC3(src, ";");

    if (ep != 0) {
	const assoc *ap;

	do {
	    bool found = FALSE;

	    for (ap = table; ap->from; ap++) {
		size_t tlen = FUNC2(ap->from);

		if (FUNC1(ap->from, ep, tlen)) {
		    FUNC0(dst, ap->to, MAX_TERMINFO_LENGTH);
		    found = TRUE;
		    break;
		}
	    }

	    if (!found)
		FUNC0(dst, ep, MAX_TERMINFO_LENGTH);
	    FUNC0(dst, ";", MAX_TERMINFO_LENGTH);
	} while
	    ((ep = FUNC3((char *) 0, ";")));

	dst[FUNC2(dst) - 1] = '\0';

	result = dst;
    }
    return result;
}