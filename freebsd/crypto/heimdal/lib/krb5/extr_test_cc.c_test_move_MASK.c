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
typedef  int /*<<< orphan*/  krb5_cc_ops ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ KRB5_CC_NOSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(krb5_context context, const char *type)
{
    const krb5_cc_ops *ops;
    krb5_ccache fromid, toid;
    krb5_error_code ret;
    krb5_principal p, p2;

    ops = FUNC1(context, type);
    if (ops == NULL)
	return;

    ret = FUNC4(context, type, NULL, &fromid);
    if (ret == KRB5_CC_NOSUPP)
	return;
    else if (ret)
	FUNC5(context, 1, ret, "krb5_cc_new_unique: %s", type);

    ret = FUNC8(context, "lha@SU.SE", &p);
    if (ret)
	FUNC5(context, 1, ret, "krb5_parse_name");

    ret = FUNC3(context, fromid, p);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_initialize");

    ret = FUNC4(context, type, NULL, &toid);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_new_unique");

    ret = FUNC3(context, toid, p);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_initialize");

    ret = FUNC2(context, toid, &p2);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_get_principal");

    if (FUNC9(context, p, p2) == FALSE)
	FUNC6(context, 1, "p != p2");

    FUNC7(context, p);
    FUNC7(context, p2);

    FUNC0(context, toid);
    FUNC0(context, fromid);
}