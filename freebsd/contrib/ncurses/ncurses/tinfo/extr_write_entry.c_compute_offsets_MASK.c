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
 char* ABSENT_STRING ; 
 char* CANCELLED_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(char **Strings, size_t strmax, short *offsets)
{
    int nextfree = 0;
    size_t i;

    for (i = 0; i < strmax; i++) {
	if (Strings[i] == ABSENT_STRING) {
	    offsets[i] = -1;
	} else if (Strings[i] == CANCELLED_STRING) {
	    offsets[i] = -2;
	} else {
	    offsets[i] = (short) nextfree;
	    nextfree += (int) FUNC2(Strings[i]) + 1;
	    FUNC0(("put Strings[%d]=%s(%d)", (int) i,
		       FUNC1(Strings[i]), (int) nextfree));
	}
    }
    return nextfree;
}