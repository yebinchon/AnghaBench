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
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
    krb5_error_code ret;

    FUNC3(argv[0]);

    ret = FUNC2(&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    ret = 0;
    ret += FUNC4();

    FUNC1(context);

    return ret;
}