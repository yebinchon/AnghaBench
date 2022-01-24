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
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static int
FUNC5(hx509_context context, const char *name)
{
    hx509_name n;
    char *s;
    int ret;

    ret = FUNC3(context, name, &n);
    if (ret)
	return 1;

    ret = FUNC2(n, &s);
    if (ret)
	return 1;

    if (FUNC4(s, name) != 0)
	return 1;

    FUNC1(&n);
    FUNC0(s);

    return 0;
}