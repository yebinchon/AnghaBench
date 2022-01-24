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
typedef  int /*<<< orphan*/  heim_integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

__attribute__((used)) static int
FUNC7(const char *p, const char *norm_p, heim_integer *i)
{
    heim_integer i2;
    char *str;
    int ret;

    ret = FUNC3(i, &str);
    if (ret)
	FUNC4(1, "der_print_hex_heim_integer: %d", ret);

    if (FUNC6(str, norm_p) != 0)
	FUNC4(1, "der_print_hex_heim_integer: %s != %s", str, p);

    ret = FUNC2(str, &i2);
    if (ret)
	FUNC4(1, "der_parse_hex_heim_integer: %d", ret);

    if (FUNC1(i, &i2) != 0)
	FUNC4(1, "der_heim_integer_cmp: p %s", p);

    FUNC0(&i2);
    FUNC5(str);

    ret = FUNC2(p, &i2);
    if (ret)
	FUNC4(1, "der_parse_hex_heim_integer: %d", ret);

    if (FUNC1(i, &i2) != 0)
	FUNC4(1, "der_heim_integer_cmp: norm");

    FUNC0(&i2);

    return 0;
}