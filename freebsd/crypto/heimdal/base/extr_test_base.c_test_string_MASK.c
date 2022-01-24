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
typedef  int /*<<< orphan*/  heim_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
    heim_string_t s1, s2;
    const char *string = "hejsan";

    s1 = FUNC3(string);
    s2 = FUNC3(string);

    if (FUNC1(s1, s2) != 0) {
	FUNC4("the same string is not the same\n");
	FUNC0(1);
    }

    FUNC2(s1);
    FUNC2(s2);

    return 0;
}