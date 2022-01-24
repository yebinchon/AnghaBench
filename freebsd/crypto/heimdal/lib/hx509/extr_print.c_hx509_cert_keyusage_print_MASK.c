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
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  KeyUsage ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int
FUNC6(hx509_context context, hx509_cert c, char **s)
{
    KeyUsage ku;
    char buf[256];
    int ret;

    *s = NULL;

    ret = FUNC1(context, c, &ku);
    if (ret)
	return ret;
    FUNC5(FUNC0(ku), FUNC2(), buf, sizeof(buf));
    *s = FUNC4(buf);
    if (*s == NULL) {
	FUNC3(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    return 0;
}