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
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int
FUNC5(ACPI_HANDLE handle)
{
    char	*cp, *env, *np;
    int		len;

    np = FUNC0(handle);
    if (*np == '\\')
	np++;
    if ((env = FUNC3("debug.acpi.avoid")) == NULL)
	return (0);

    /* Scan the avoid list checking for a match */
    cp = env;
    for (;;) {
	while (*cp != 0 && FUNC2(*cp))
	    cp++;
	if (*cp == 0)
	    break;
	len = 0;
	while (cp[len] != 0 && !FUNC2(cp[len]))
	    len++;
	if (!FUNC4(cp, np, len)) {
	    FUNC1(env);
	    return(1);
	}
	cp += len;
    }
    FUNC1(env);

    return (0);
}