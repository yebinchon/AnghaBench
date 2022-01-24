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
 int /*<<< orphan*/  KRB5_PRINCIPAL_PARSE_ENTERPRISE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(krb5_context context)
{
    krb5_error_code ret;
    char *unparsed;
    krb5_principal p;

    ret = FUNC5(context, "SAMBA.ORG");
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_name");

    ret = FUNC4(context, "lha@su.se@WIN.SU.SE",
				KRB5_PRINCIPAL_PARSE_ENTERPRISE, &p);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_name_flags");

    ret = FUNC6(context, p, &unparsed);
    if (ret)
	FUNC1(context, 1, ret, "krb5_unparse_name");

    FUNC3(context, p);

    if (FUNC7(unparsed, "lha\\@su.se@WIN.SU.SE") != 0)
	FUNC2(context, 1, "enterprise name failed 1");
    FUNC0(unparsed);

    /*
     *
     */

    ret = FUNC4(context, "lha\\@su.se@WIN.SU.SE",
				KRB5_PRINCIPAL_PARSE_ENTERPRISE, &p);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_name_flags");

    ret = FUNC6(context, p, &unparsed);
    if (ret)
	FUNC1(context, 1, ret, "krb5_unparse_name");

    FUNC3(context, p);
    if (FUNC7(unparsed, "lha\\@su.se\\@WIN.SU.SE@SAMBA.ORG") != 0)
	FUNC2(context, 1, "enterprise name failed 2: %s", unparsed);
    FUNC0(unparsed);

    /*
     *
     */

    ret = FUNC4(context, "lha\\@su.se@WIN.SU.SE", 0, &p);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_name_flags");

    ret = FUNC6(context, p, &unparsed);
    if (ret)
	FUNC1(context, 1, ret, "krb5_unparse_name");

    FUNC3(context, p);
    if (FUNC7(unparsed, "lha\\@su.se@WIN.SU.SE") != 0)
	FUNC2(context, 1, "enterprise name failed 3");
    FUNC0(unparsed);

    /*
     *
     */

    ret = FUNC4(context, "lha@su.se",
				KRB5_PRINCIPAL_PARSE_ENTERPRISE, &p);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_name_flags");

    ret = FUNC6(context, p, &unparsed);
    if (ret)
	FUNC1(context, 1, ret, "krb5_unparse_name");

    FUNC3(context, p);
    if (FUNC7(unparsed, "lha\\@su.se@SAMBA.ORG") != 0)
	FUNC2(context, 1, "enterprise name failed 2: %s", unparsed);
    FUNC0(unparsed);
}