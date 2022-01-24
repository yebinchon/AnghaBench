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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(krb5_context context, const char *type)
{
    krb5_error_code ret;
    krb5_ccache id, id2;
    krb5_principal p, p2;
    char *n = NULL;

    ret = FUNC12(context, "lha@SU.SE", &p);
    if (ret)
	FUNC10(context, 1, ret, "krb5_parse_name");

    ret = FUNC8(context, type, NULL, &id);
    if (ret)
	FUNC10(context, 1, ret, "krb5_cc_new_unique: %s", type);

    if (FUNC0(&n, "%d:%d",
		 FUNC6(context, id),
		 FUNC4(context, id)) < 0 || n == NULL)
	FUNC1(1, "malloc");


    ret = FUNC9(context, n, &id2);
    FUNC2(n);
    if (ret)
	FUNC10(context, 1, ret, "krb5_cc_resolve");

    FUNC3(context, id);

    ret = FUNC7(context, id2, p);
    if (ret)
	FUNC10(context, 1, ret, "krb5_cc_initialize");

    ret = FUNC5(context, id2, &p2);
    if (ret)
	FUNC10(context, 1, ret, "krb5_cc_get_principal");

    FUNC3(context, id2);
    FUNC11(context, p);
    FUNC11(context, p2);
}