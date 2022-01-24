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
typedef  int /*<<< orphan*/  heim_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(void)
{
    heim_dict_t dict;
    heim_number_t a1 = FUNC3(1);
    heim_string_t a2 = FUNC5("hejsan");
    heim_number_t a3 = FUNC3(3);
    heim_string_t a4 = FUNC5("foosan");

    dict = FUNC1(10);

    FUNC0(dict, a1, a2);
    FUNC0(dict, a3, a4);

    FUNC2(dict, a3);
    FUNC2(dict, a1);

    FUNC4(a1);
    FUNC4(a2);
    FUNC4(a3);
    FUNC4(a4);

    FUNC4(dict);

    return 0;
}