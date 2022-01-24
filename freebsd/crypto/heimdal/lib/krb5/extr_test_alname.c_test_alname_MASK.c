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
typedef  int /*<<< orphan*/  localname ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_realm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 

__attribute__((used)) static void
FUNC8(krb5_context context, krb5_const_realm realm,
	    const char *user, const char *inst,
	    const char *localuser, int ok)
{
    krb5_principal p;
    char localname[1024];
    krb5_error_code ret;
    char *princ;

    ret = FUNC5(context, &p, realm, user, inst, NULL);
    if (ret)
	FUNC3(context, 1, ret, "krb5_build_principal");

    ret = FUNC6(context, p, &princ);
    if (ret)
	FUNC3(context, 1, ret, "krb5_unparse_name");

    ret = FUNC2(context, p, sizeof(localname), localname);
    FUNC4(context, p);
    FUNC1(princ);
    if (ret) {
	if (!ok)
	    return;
	FUNC3(context, 1, ret, "krb5_aname_to_localname: %s -> %s",
		 princ, localuser);
    }

    if (FUNC7(localname, localuser) != 0) {
	if (ok)
	    FUNC0(1, "compared failed %s != %s (should have succeded)",
		 localname, localuser);
    } else {
	if (!ok)
	    FUNC0(1, "compared failed %s == %s (should have failed)",
		 localname, localuser);
    }

}