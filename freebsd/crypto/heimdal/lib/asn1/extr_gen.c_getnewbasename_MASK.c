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
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(char **newbasename, int typedefp, const char *basename, const char *name)
{
    if (typedefp)
	*newbasename = FUNC3(name);
    else {
	if (name[0] == '*')
	    name++;
	if (FUNC0(newbasename, "%s_%s", basename, name) < 0)
	    FUNC2(1, "malloc");
    }
    if (*newbasename == NULL)
	FUNC1(1, "malloc");
}