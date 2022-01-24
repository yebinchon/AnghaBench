#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* krb5_prompter_fct ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,char*,int,TYPE_1__*) ;
struct TYPE_21__ {int hidden; char* prompt; int /*<<< orphan*/  type; TYPE_4__* reply; } ;
typedef  TYPE_1__ krb5_prompt ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_22__ {int flags; int /*<<< orphan*/  preauth_list_length; int /*<<< orphan*/  preauth_list; } ;
typedef  TYPE_3__ krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_23__ {char* data; int length; } ;
typedef  TYPE_4__ krb5_data ;
typedef  char krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  cpw_cred ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  FALSE ; 
 int KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST ; 
 int /*<<< orphan*/  KRB5_PROMPT_TYPE_NEW_PASSWORD ; 
 int /*<<< orphan*/  KRB5_PROMPT_TYPE_NEW_PASSWORD_AGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char**,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,scalar_t__ (*) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,char*,int,TYPE_1__*),void*,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,size_t) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 

__attribute__((used)) static krb5_error_code
FUNC20 (krb5_context context,
		 krb5_principal client,
		 const char *password,
		 char *newpw,
		 size_t newpw_sz,
		 krb5_prompter_fct prompter,
		 void *data,
		 krb5_get_init_creds_opt *old_options)
{
    krb5_prompt prompts[2];
    krb5_error_code ret;
    krb5_creds cpw_cred;
    char buf1[BUFSIZ], buf2[BUFSIZ];
    krb5_data password_data[2];
    int result_code;
    krb5_data result_code_string;
    krb5_data result_string;
    char *p;
    krb5_get_init_creds_opt *options;

    FUNC15 (&cpw_cred, 0, sizeof(cpw_cred));

    ret = FUNC6(context, &options);
    if (ret)
        return ret;
    FUNC11 (options, 60);
    FUNC8 (options, FALSE);
    FUNC10 (options, FALSE);
    if (old_options && old_options->flags & KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST)
	FUNC9 (options,
						  old_options->preauth_list,
						  old_options->preauth_list_length);

    FUNC4 (&result_code_string);
    FUNC4 (&result_string);

    ret = FUNC12 (context,
					&cpw_cred,
					client,
					password,
					prompter,
					data,
					0,
					"kadmin/changepw",
					options);
    FUNC7(context, options);
    if (ret)
	goto out;

    for(;;) {
	password_data[0].data   = buf1;
	password_data[0].length = sizeof(buf1);

	prompts[0].hidden = 1;
	prompts[0].prompt = "New password: ";
	prompts[0].reply  = &password_data[0];
	prompts[0].type   = KRB5_PROMPT_TYPE_NEW_PASSWORD;

	password_data[1].data   = buf2;
	password_data[1].length = sizeof(buf2);

	prompts[1].hidden = 1;
	prompts[1].prompt = "Repeat new password: ";
	prompts[1].reply  = &password_data[1];
	prompts[1].type   = KRB5_PROMPT_TYPE_NEW_PASSWORD_AGAIN;

	ret = (*prompter) (context, data, NULL, "Changing password",
			   2, prompts);
	if (ret) {
	    FUNC15 (buf1, 0, sizeof(buf1));
	    FUNC15 (buf2, 0, sizeof(buf2));
	    goto out;
	}

	if (FUNC16 (buf1, buf2) == 0)
	    break;
	FUNC15 (buf1, 0, sizeof(buf1));
	FUNC15 (buf2, 0, sizeof(buf2));
    }

    ret = FUNC14 (context,
			     &cpw_cred,
			     buf1,
			     client,
			     &result_code,
			     &result_code_string,
			     &result_string);
    if (ret)
	goto out;
    if (FUNC1(&p, "%s: %.*s\n",
		 result_code ? "Error" : "Success",
		 (int)result_string.length,
		 result_string.length > 0 ? (char*)result_string.data : "") < 0)
    {
	ret = ENOMEM;
	goto out;
    }

    /* return the result */
    (*prompter) (context, data, NULL, p, 0, NULL);

    FUNC2 (p);
    if (result_code == 0) {
	FUNC17 (newpw, buf1, newpw_sz);
	ret = 0;
    } else {
	ret = ENOTTY;
	FUNC13(context, ret,
			       FUNC0("failed changing password", ""));
    }

out:
    FUNC15 (buf1, 0, sizeof(buf1));
    FUNC15 (buf2, 0, sizeof(buf2));
    FUNC3 (&result_string);
    FUNC3 (&result_code_string);
    FUNC5 (context, &cpw_cred);
    return ret;
}