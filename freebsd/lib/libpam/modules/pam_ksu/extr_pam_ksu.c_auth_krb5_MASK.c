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
typedef  int /*<<< orphan*/  pam_handle_t ;
typedef  int /*<<< orphan*/  krb5_verify_init_creds_opt ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  PAM_AUTHTOK ; 
 int PAM_AUTH_ERR ; 
 int PAM_BUF_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,long) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,char*) ; 

__attribute__((used)) static int
FUNC13(pam_handle_t *pamh, krb5_context context, const char *su_principal_name,
    krb5_principal su_principal)
{
	krb5_creds	 creds;
	krb5_get_init_creds_opt *gic_opt;
	krb5_verify_init_creds_opt vic_opt;
	const char	*pass;
	char		*prompt;
	long		 rv;
	int		 pamret;

	prompt = NULL;
	FUNC10(&vic_opt);
	if (su_principal_name != NULL)
		(void)FUNC1(&prompt, "Password for %s:", su_principal_name);
	else
		(void)FUNC1(&prompt, "Password:");
	if (prompt == NULL)
		return (PAM_BUF_ERR);
	pass = NULL;
	pamret = FUNC12(pamh, PAM_AUTHTOK, &pass, prompt);
	FUNC2(prompt);
	if (pamret != PAM_SUCCESS)
		return (pamret);
	rv = FUNC6(context, &gic_opt);
	if (rv != 0) {
		const char *msg = FUNC5(context, rv);
		FUNC0("krb5_get_init_creds_opt_alloc: %s", msg);
		FUNC4(context, msg);
		return (PAM_AUTH_ERR);
	}
	rv = FUNC8(context, &creds, su_principal,
	    pass, NULL, NULL, 0, NULL, gic_opt);
	FUNC7(context, gic_opt);
	if (rv != 0) {
		const char *msg = FUNC5(context, rv);
		FUNC0("krb5_get_init_creds_password: %s", msg);
		FUNC4(context, msg);
		return (PAM_AUTH_ERR);
	}
	FUNC11(&vic_opt, 1);
	rv = FUNC9(context, &creds, NULL, NULL, NULL,
	    &vic_opt);
	FUNC3(context, &creds);
	if (rv != 0) {
		const char *msg = FUNC5(context, rv);
		FUNC0("krb5_verify_init_creds: %s", msg);
		FUNC4(context, msg);
		return (PAM_AUTH_ERR);
	}
	return (PAM_SUCCESS);
}