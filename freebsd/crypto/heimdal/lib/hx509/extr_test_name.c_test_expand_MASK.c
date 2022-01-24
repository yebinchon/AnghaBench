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
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/ * hx509_env ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 

__attribute__((used)) static int
FUNC8(hx509_context context, const char *name, const char *expected)
{
    hx509_env env = NULL;
    hx509_name n;
    char *s;
    int ret;

    FUNC1(context, &env, "uid", "lha");

    ret = FUNC6(context, name, &n);
    if (ret)
	return 1;

    ret = FUNC3(context, n, env);
    FUNC2(&env);
    if (ret)
	return 1;

    ret = FUNC5(n, &s);
    FUNC4(&n);
    if (ret)
	return 1;

    ret = FUNC7(s, expected) != 0;
    FUNC0(s);
    if (ret)
	return 1;

    return 0;
}