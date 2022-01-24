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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

int
FUNC8(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    int val = 0;

    ret = FUNC3 (&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    val |= FUNC7(context);

    val |= FUNC4(context);
    val |= FUNC6(context);
    val |= FUNC1(context);

    if (verbose && val == 0)
	FUNC5("all ok\n");
    if (val)
	FUNC5("tests failed\n");

    FUNC2(context);

    return val;
}