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
 scalar_t__ FUNC0 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3( char const *s )
{
    char *cp;

    if (s == NULL)
        return NULL;

    cp = (char *) FUNC0((unsigned) (FUNC2(s)+1), "strdup");

    if (cp != NULL)
        (void) FUNC1(cp, s);

    return cp;
}