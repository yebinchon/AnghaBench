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
typedef  int /*<<< orphan*/ * krb5_prompter_fct ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  int krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KADM5_BAD_PASSWORD ; 
#define  KRB5KRB_AP_ERR_BAD_INTEGRITY 130 
#define  KRB5KRB_AP_ERR_MODIFIED 129 
#define  KRB5_LIBOS_PWDINTR 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC15(krb5_context context,
	      krb5_principal client,
	      const char *password,
	      krb5_prompter_fct prompter,
	      const char *keytab,
	      const char *server_name,
	      krb5_ccache *ret_cache)
{
    krb5_error_code ret;
    krb5_creds cred;
    krb5_get_init_creds_opt *opt;
    krb5_ccache id;

    ret = FUNC5 (context, &opt);
    if (ret)
	return ret;

    FUNC7(context, "kadmin",
					      FUNC14(context,
								       client),
					      opt);


    FUNC8 (opt, FALSE);
    FUNC9 (opt, FALSE);

    if(password == NULL && prompter == NULL) {
	krb5_keytab kt;
	if(keytab == NULL)
	    ret = FUNC12(context, &kt);
	else
	    ret = FUNC13(context, keytab, &kt);
	if(ret) {
	    FUNC6(context, opt);
	    return ret;
	}
	ret = FUNC4 (context,
					  &cred,
					  client,
					  kt,
					  0,
					  server_name,
					  opt);
	FUNC11(context, kt);
    } else {
	ret = FUNC10 (context,
					    &cred,
					    client,
					    password,
					    prompter,
					    NULL,
					    0,
					    server_name,
					    opt);
    }
    FUNC6(context, opt);
    switch(ret){
    case 0:
	break;
    case KRB5_LIBOS_PWDINTR:	/* don't print anything if it was just C-c:ed */
    case KRB5KRB_AP_ERR_BAD_INTEGRITY:
    case KRB5KRB_AP_ERR_MODIFIED:
	return KADM5_BAD_PASSWORD;
    default:
	return ret;
    }
    ret = FUNC1(context, krb5_cc_type_memory, NULL, &id);
    if(ret)
	return ret;
    ret = FUNC0 (context, id, cred.client);
    if (ret)
	return ret;
    ret = FUNC2 (context, id, &cred);
    if (ret)
	return ret;
    FUNC3 (context, &cred);
    *ret_cache = id;
    return 0;
}