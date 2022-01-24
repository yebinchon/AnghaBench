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
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int
FUNC2(const char *want, const char *have)
{
        if (want == NULL || have == NULL || *have == '\0')
                return 1;
        while (*have != '\0') {
                if (FUNC0(have, want) != NULL)
                        return 1;
                have = FUNC1(have, '\0') + 1;
        }
        return 0;
}