#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_5__ {int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  cred ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(krb5_context context, const char *type)
{
    krb5_error_code ret;
    krb5_ccache id;
    krb5_principal p;
    krb5_creds cred;

    ret = FUNC7(context, "lha@SU.SE", &p);
    if (ret)
	FUNC5(context, 1, ret, "krb5_parse_name");

    ret = FUNC2(context, type, NULL, &id);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_gen_new: %s", type);

    ret = FUNC1(context, id, p);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_initialize");

    /* */
    FUNC8(&cred, 0, sizeof(cred));
    ret = FUNC7(context, "krbtgt/SU.SE@SU.SE", &cred.server);
    if (ret)
	FUNC5(context, 1, ret, "krb5_parse_name");
    ret = FUNC7(context, "lha@SU.SE", &cred.client);
    if (ret)
	FUNC5(context, 1, ret, "krb5_parse_name");

    ret = FUNC4(context, id, &cred);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_store_cred");

    ret = FUNC3(context, id, 0, &cred);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_remove_cred");

    ret = FUNC0(context, id);
    if (ret)
	FUNC5(context, 1, ret, "krb5_cc_destroy");

    FUNC6(context, p);
    FUNC6(context, cred.server);
    FUNC6(context, cred.client);
}