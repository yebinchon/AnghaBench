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
typedef  int /*<<< orphan*/  heim_number_t ;
typedef  int /*<<< orphan*/  heim_auto_release_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
    heim_auto_release_t ar1, ar2;
    heim_number_t n1;
    heim_string_t s1;

    ar1 = FUNC1();

    s1 = FUNC4("hejsan");
    FUNC0(s1);

    n1 = FUNC2(1);
    FUNC0(n1);

    ar2 = FUNC1();

    n1 = FUNC2(1);
    FUNC0(n1);

    FUNC3(ar2);
    FUNC3(ar1);

    return 0;
}