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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 char* TEST_CC_NAME ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

__attribute__((used)) static void
FUNC6(krb5_context context)
{
    krb5_error_code ret;
    const char *p, *test_cc_name = TEST_CC_NAME;
    char *p1, *p2, *p3;

    p = FUNC2(context);
    if (p == NULL)
	FUNC4 (context, 1, "krb5_cc_default_name 1 failed");
    p1 = FUNC0(p);

    ret = FUNC3(context, NULL);
    if (p == NULL)
	FUNC4 (context, 1, "krb5_cc_set_default_name failed");

    p = FUNC2(context);
    if (p == NULL)
	FUNC4 (context, 1, "krb5_cc_default_name 2 failed");
    p2 = FUNC0(p);

    if (FUNC5(p1, p2) != 0)
	FUNC4 (context, 1, "krb5_cc_default_name no longer same");

    ret = FUNC3(context, test_cc_name);
    if (p == NULL)
	FUNC4 (context, 1, "krb5_cc_set_default_name 1 failed");

    p = FUNC2(context);
    if (p == NULL)
	FUNC4 (context, 1, "krb5_cc_default_name 2 failed");
    p3 = FUNC0(p);

#ifndef KRB5_USE_PATH_TOKENS
    /* If we are using path tokens, we don't expect the p3 and
       test_cc_name to match since p3 is going to have expanded
       tokens. */
    if (FUNC5(p3, test_cc_name) != 0)
	FUNC4 (context, 1, "krb5_cc_set_default_name 1 failed");
#endif

    FUNC1(p1);
    FUNC1(p2);
    FUNC1(p3);
}