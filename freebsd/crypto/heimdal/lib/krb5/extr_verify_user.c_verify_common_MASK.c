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
typedef  int /*<<< orphan*/  krb5_verify_init_creds_opt ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_NT_SRV_HST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC10 (krb5_context context,
	       krb5_principal principal,
	       krb5_ccache ccache,
	       krb5_keytab keytab,
	       krb5_boolean secure,
	       const char *service,
	       krb5_creds cred)
{
    krb5_error_code ret;
    krb5_principal server;
    krb5_verify_init_creds_opt vopt;
    krb5_ccache id;

    ret = FUNC6 (context, NULL, service, KRB5_NT_SRV_HST,
				   &server);
    if(ret)
	return ret;

    FUNC8(&vopt);
    FUNC9(&vopt, secure);

    ret = FUNC7(context,
				 &cred,
				 server,
				 keytab,
				 NULL,
				 &vopt);
    FUNC5(context, server);
    if(ret)
	return ret;
    if(ccache == NULL)
	ret = FUNC1 (context, &id);
    else
	id = ccache;
    if(ret == 0){
	ret = FUNC2(context, id, principal);
	if(ret == 0){
	    ret = FUNC3(context, id, &cred);
	}
	if(ccache == NULL)
	    FUNC0(context, id);
    }
    FUNC4(context, &cred);
    return ret;
}