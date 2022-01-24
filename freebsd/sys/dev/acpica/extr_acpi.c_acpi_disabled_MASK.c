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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

int
FUNC5(char *subsys)
{
    char	*cp, *env;
    int		len;

    if ((env = FUNC2("debug.acpi.disabled")) == NULL)
	return (0);
    if (FUNC3(env, "all") == 0) {
	FUNC0(env);
	return (1);
    }

    /* Scan the disable list, checking for a match. */
    cp = env;
    for (;;) {
	while (*cp != '\0' && FUNC1(*cp))
	    cp++;
	if (*cp == '\0')
	    break;
	len = 0;
	while (cp[len] != '\0' && !FUNC1(cp[len]))
	    len++;
	if (FUNC4(cp, subsys, len) == 0) {
	    FUNC0(env);
	    return (1);
	}
	cp += len;
    }
    FUNC0(env);

    return (0);
}