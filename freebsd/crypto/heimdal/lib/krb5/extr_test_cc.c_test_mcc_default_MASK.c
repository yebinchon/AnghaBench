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
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
    krb5_context context;
    krb5_error_code ret;
    krb5_ccache id, id2;
    int i;

    for (i = 0; i < 10; i++) {

	ret = FUNC5(&context);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_init_context");

	ret = FUNC2(context, "MEMORY:foo");
	if (ret)
	    FUNC3(context, 1, ret, "krb5_cc_set_default_name");

	ret = FUNC1(context, &id);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_cc_default");

	ret = FUNC1(context, &id2);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_cc_default");

	ret = FUNC0(context, id);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_cc_close");

	ret = FUNC0(context, id2);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_cc_close");

	FUNC4(context);
    }
}