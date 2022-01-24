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
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(krb5_context context)
{
    krb5_error_code ret;
    krb5_ccache id, id2;
    const char *nc, *tc;
    char *c;
    krb5_principal p, p2;

    ret = FUNC14(context, "lha@SU.SE", &p);
    if (ret)
	FUNC11(context, 1, ret, "krb5_parse_name");

    ret = FUNC9(context, krb5_cc_type_memory, NULL, &id);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_new_unique");

    ret = FUNC8(context, id, p);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_initialize");

    nc = FUNC5(context, id);
    if (nc == NULL)
	FUNC12(context, 1, "krb5_cc_get_name");

    tc = FUNC7(context, id);
    if (tc == NULL)
	FUNC12(context, 1, "krb5_cc_get_name");

    if (FUNC0(&c, "%s:%s", tc, nc) < 0 || c == NULL)
	FUNC1(1, "malloc");

    FUNC3(context, id);

    ret = FUNC10(context, c, &id2);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_resolve");

    ret = FUNC6(context, id2, &p2);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_get_principal");

    if (FUNC15(context, p, p2) == FALSE)
	FUNC12(context, 1, "p != p2");

    FUNC4(context, id2);
    FUNC13(context, p);
    FUNC13(context, p2);

    ret = FUNC10(context, c, &id2);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_resolve");

    ret = FUNC6(context, id2, &p2);
    if (ret == 0)
	FUNC12(context, 1, "krb5_cc_get_principal");

    FUNC4(context, id2);
    FUNC2(c);
}