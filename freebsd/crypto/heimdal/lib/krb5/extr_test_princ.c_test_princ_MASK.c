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

/* Variables and functions */
 int /*<<< orphan*/  KRB5_PRINCIPAL_PARSE_NO_REALM ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_PARSE_REQUIRE_REALM ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_UNPARSE_DISPLAY ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_UNPARSE_NO_REALM ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_UNPARSE_SHORT ; 
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

__attribute__((used)) static void
FUNC15(krb5_context context)
{
    const char *princ = "lha@SU.SE";
    const char *princ_short = "lha";
    const char *noquote;
    krb5_error_code ret;
    char *princ_unparsed;
    char *princ_reformed = NULL;
    const char *realm;

    krb5_principal p, p2;

    ret = FUNC6(context, princ, &p);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    ret = FUNC12(context, p, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ, princ_unparsed)) {
	FUNC4(context, 1, "%s != %s", princ, princ_unparsed);
    }

    FUNC2(princ_unparsed);

    ret = FUNC13(context, p,
				  KRB5_PRINCIPAL_UNPARSE_NO_REALM,
				  &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ_short, princ_unparsed))
	FUNC4(context, 1, "%s != %s", princ_short, princ_unparsed);
    FUNC2(princ_unparsed);

    realm = FUNC10(context, p);

    if (FUNC0(&princ_reformed, "%s@%s", princ_short, realm) < 0 || princ_reformed == NULL)
	FUNC1(1, "malloc");

    ret = FUNC6(context, princ_reformed, &p2);
    FUNC2(princ_reformed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (!FUNC8(context, p, p2)) {
	FUNC4(context, 1, "p != p2");
    }

    FUNC5(context, p2);

    ret = FUNC11(context, "SU.SE");
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    ret = FUNC13(context, p,
				  KRB5_PRINCIPAL_UNPARSE_SHORT,
				  &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ_short, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ_short, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC6(context, princ_short, &p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (!FUNC8(context, p, p2))
	FUNC4(context, 1, "p != p2");
    FUNC5(context, p2);

    ret = FUNC12(context, p, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC11(context, "SAMBA.ORG");
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    ret = FUNC6(context, princ_short, &p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC8(context, p, p2))
	FUNC4(context, 1, "p == p2");

    if (!FUNC9(context, p, p2))
	FUNC4(context, 1, "(ignoring realms) p != p2");

    ret = FUNC12(context, p2, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ, princ_unparsed) == 0)
	FUNC4(context, 1, "%s == %s", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    FUNC5(context, p2);

    ret = FUNC6(context, princ, &p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (!FUNC8(context, p, p2))
	FUNC4(context, 1, "p != p2");

    ret = FUNC12(context, p2, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (FUNC14(princ, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    FUNC5(context, p2);

    ret = FUNC13(context, p,
				  KRB5_PRINCIPAL_UNPARSE_SHORT,
				  &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_short");

    if (FUNC14(princ, princ_unparsed) != 0)
	FUNC4(context, 1, "'%s' != '%s'", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC12(context, p, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_short");

    if (FUNC14(princ, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC7(context, princ,
				KRB5_PRINCIPAL_PARSE_NO_REALM,
				&p2);
    if (!ret)
	FUNC3(context, 1, ret, "Should have failed to parse %s a "
		 "short name", princ);

    ret = FUNC7(context, princ_short,
				KRB5_PRINCIPAL_PARSE_NO_REALM,
				&p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    ret = FUNC13(context, p2,
				  KRB5_PRINCIPAL_UNPARSE_NO_REALM,
				  &princ_unparsed);
    FUNC5(context, p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_norealm");

    if (FUNC14(princ_short, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ_short, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC7(context, princ_short,
				KRB5_PRINCIPAL_PARSE_REQUIRE_REALM,
				&p2);
    if (!ret)
	FUNC3(context, 1, ret, "Should have failed to parse %s "
		 "because it lacked a realm", princ_short);

    ret = FUNC7(context, princ,
				KRB5_PRINCIPAL_PARSE_REQUIRE_REALM,
				&p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    if (!FUNC8(context, p, p2))
	FUNC4(context, 1, "p != p2");

    ret = FUNC13(context, p2,
				  KRB5_PRINCIPAL_UNPARSE_NO_REALM,
				  &princ_unparsed);
    FUNC5(context, p2);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_norealm");

    if (FUNC14(princ_short, princ_unparsed))
	FUNC4(context, 1, "'%s' != '%s'", princ_short, princ_unparsed);
    FUNC2(princ_unparsed);

    FUNC5(context, p);

    /* test quoting */

    princ = "test\\ principal@SU.SE";
    noquote = "test principal@SU.SE";

    ret = FUNC7(context, princ, 0, &p);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_name");

    ret = FUNC13(context, p, 0, &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_flags");

    if (FUNC14(princ, princ_unparsed))
	FUNC4(context, 1, "q '%s' != '%s'", princ, princ_unparsed);
    FUNC2(princ_unparsed);

    ret = FUNC13(context, p, KRB5_PRINCIPAL_UNPARSE_DISPLAY,
				  &princ_unparsed);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name_flags");

    if (FUNC14(noquote, princ_unparsed))
	FUNC4(context, 1, "nq '%s' != '%s'", noquote, princ_unparsed);
    FUNC2(princ_unparsed);

    FUNC5(context, p);
}