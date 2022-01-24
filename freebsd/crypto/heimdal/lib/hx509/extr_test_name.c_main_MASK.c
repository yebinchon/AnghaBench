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
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

int
FUNC7(int argc, char **argv)
{
    hx509_context context;
    int ret = 0;

    ret = FUNC2(&context);
    if (ret)
	FUNC0(1, "hx509_context_init failed with %d", ret);

    ret += FUNC5(context, "CN=foo,C=SE");
    ret += FUNC5(context, "CN=foo,CN=kaka,CN=FOO,DC=ad1,C=SE");
    ret += FUNC5(context, "1.2.3.4=foo,C=SE");
    ret += FUNC6(context, "=");
    ret += FUNC6(context, "CN=foo,=foo");
    ret += FUNC6(context, "CN=foo,really-unknown-type=foo");

    ret += FUNC4(context, "UID=${uid},C=SE", "UID=lha,C=SE");
    ret += FUNC4(context, "UID=foo${uid},C=SE", "UID=foolha,C=SE");
    ret += FUNC4(context, "UID=${uid}bar,C=SE", "UID=lhabar,C=SE");
    ret += FUNC4(context, "UID=f${uid}b,C=SE", "UID=flhab,C=SE");
    ret += FUNC4(context, "UID=${uid}${uid},C=SE", "UID=lhalha,C=SE");
    ret += FUNC4(context, "UID=${uid}{uid},C=SE", "UID=lha{uid},C=SE");

    ret += FUNC3(context);

    FUNC1(&context);

    return ret;
}