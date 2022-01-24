#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ krb5_const_principal ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CONF_NAME ; 
 int /*<<< orphan*/  KRB5_REALM_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, krb5_ccache id,
		      krb5_const_principal principal,
		      const char *name, krb5_creds *cred)
{
    krb5_principal client;
    krb5_error_code ret;
    char *pname = NULL;

    FUNC6(cred, 0, sizeof(*cred));

    ret = FUNC1(context, id, &client);
    if (ret)
	return ret;

    if (principal) {
	ret = FUNC5(context, principal, &pname);
	if (ret)
	    return ret;
    }

    ret = FUNC4(context, &cred->server,
			      KRB5_REALM_NAME,
			      KRB5_CONF_NAME, name, pname, NULL);
    FUNC0(pname);
    if (ret) {
	FUNC3(context, client);
	return ret;
    }
    ret = FUNC2(context, client, &cred->client);
    FUNC3(context, client);
    return ret;
}