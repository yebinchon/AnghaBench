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
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ; 
 scalar_t__ KRB5KRB_AP_ERR_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nop_prompter ; 
 unsigned int FUNC15 () ; 
 unsigned int FUNC16 (char const*,char***) ; 

__attribute__((used)) static void
FUNC17 (const char *filename, unsigned nreq)
{
    krb5_context context;
    krb5_error_code ret;
    int i;
    char **words;
    unsigned nwords;

    ret = FUNC12 (&context);
    if (ret)
	FUNC1 (1, "krb5_init_context failed: %d", ret);

    nwords = FUNC16 (filename, &words);

    for (i = 0; i < nreq; ++i) {
	char *name = words[FUNC15() % nwords];
	krb5_get_init_creds_opt *opt;
	krb5_creds cred;
	krb5_principal principal;
	int result_code;
	krb5_data result_code_string, result_string;
	char *old_pwd, *new_pwd;

	FUNC6 (context, &opt);
	FUNC10 (opt, 300);
	FUNC8 (opt, FALSE);
	FUNC9 (opt, FALSE);

	ret = FUNC13 (context, name, &principal);
	if (ret)
	    FUNC3 (context, 1, ret, "krb5_parse_name %s", name);

	FUNC0 (&old_pwd, "%s", name);
	FUNC0 (&new_pwd, "%s2", name);

	ret = FUNC11 (context,
					    &cred,
					    principal,
					    old_pwd,
					    nop_prompter,
					    NULL,
					    0,
					    "kadmin/changepw",
					    opt);
	if( ret == KRB5KRB_AP_ERR_BAD_INTEGRITY
	    || ret == KRB5KRB_AP_ERR_MODIFIED) {
	    char *tmp;

	    tmp = new_pwd;
	    new_pwd = old_pwd;
	    old_pwd = tmp;

	    ret = FUNC11 (context,
						&cred,
						principal,
						old_pwd,
						nop_prompter,
						NULL,
						0,
						"kadmin/changepw",
						opt);
	}
	if (ret)
	    FUNC3 (context, 1, ret, "krb5_get_init_creds_password");

	FUNC5 (context, principal);


	ret = FUNC14 (context,
				 &cred,
				 new_pwd,
				 NULL,
				 &result_code,
				 &result_code_string,
				 &result_string);
	if (ret)
	    FUNC3 (context, 1, ret, "krb5_change_password");

	FUNC2 (old_pwd);
	FUNC2 (new_pwd);
	FUNC4 (context, &cred);
	FUNC7(context, opt);
    }
}