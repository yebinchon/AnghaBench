#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ endtime; } ;
struct TYPE_8__ {TYPE_1__ times; int /*<<< orphan*/  server; int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_realm ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 scalar_t__ KRB5_CC_END ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8 (krb5_context context,
	       krb5_ccache ccache,
	       krb5_principal principal,
	       time_t *expiration)
{
    krb5_error_code ret;
    krb5_creds pattern;
    krb5_creds creds;
    krb5_const_realm client_realm;
    int expired;

    FUNC0(&pattern);

    client_realm = FUNC6(context, principal);

    ret = FUNC5 (context, &pattern.server,
			       client_realm, KRB5_TGS_NAME, client_realm, NULL);
    if (ret)
	FUNC2 (context, 1, ret, "krb5_make_principal");
    pattern.client = principal;

    ret = FUNC1 (context, ccache, 0, &pattern, &creds);
    FUNC4 (context, pattern.server);
    if (ret) {
	if (ret == KRB5_CC_END)
	    return 1;
	FUNC2 (context, 1, ret, "krb5_cc_retrieve_cred");
    }

    expired = FUNC7(NULL) > creds.times.endtime;

    if (expiration)
	*expiration = creds.times.endtime;

    FUNC3 (context, &creds);

    return expired;
}