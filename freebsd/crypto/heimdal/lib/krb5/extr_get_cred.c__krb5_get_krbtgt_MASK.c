#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_cred ;
typedef  int /*<<< orphan*/  krb5_realm ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  server; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_GC_CACHED ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC5(krb5_context context,
		 krb5_ccache  id,
		 krb5_realm realm,
		 krb5_creds **cred)
{
    krb5_error_code ret;
    krb5_creds tmp_cred;

    FUNC4(&tmp_cred, 0, sizeof(tmp_cred));

    ret = FUNC0(context, id, &tmp_cred.client);
    if (ret)
	return ret;

    ret = FUNC3(context,
			      &tmp_cred.server,
			      realm,
			      KRB5_TGS_NAME,
			      realm,
			      NULL);
    if(ret) {
	FUNC1(context, tmp_cred.client);
	return ret;
    }
    ret = FUNC2(context,
			       KRB5_GC_CACHED,
			       id,
			       &tmp_cred,
			       cred);
    FUNC1(context, tmp_cred.client);
    FUNC1(context, tmp_cred.server);
    if(ret)
	return ret;
    return 0;
}