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
struct kadm5_pw_policy_check_func {int (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ;int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  error_msg ;

/* Variables and functions */
 struct kadm5_pw_policy_check_func* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *
FUNC9 (krb5_context context,
			      krb5_principal principal,
			      krb5_data *pwd_data)
{
    const struct kadm5_pw_policy_check_func *proc;
    static char error_msg[1024];
    const char *msg;
    char **v, **vp;
    int ret;

    /*
     * Check if we should use the old version of policy function.
     */

    v = FUNC2(context, NULL,
				"password_quality",
				"policies",
				NULL);
    if (v == NULL) {
	msg = FUNC5) (context, principal, pwd_data);
	if (msg)
	    FUNC3(context, 0, "password policy failed: %s", msg);
	return msg;
    }

    error_msg[0] = '\0';

    msg = NULL;
    for(vp = v; *vp; vp++) {
	proc = FUNC0(context, *vp);
	if (proc == NULL) {
	    msg = "failed to find password verifier function";
	    FUNC3(context, 0, "Failed to find password policy "
				   "function: %s", *vp);
	    break;
	}
	ret = (proc->func)(context, principal, pwd_data, NULL,
			   error_msg, sizeof(error_msg));
	if (ret) {
	    FUNC3(context, 0, "Password policy "
				   "%s failed with %s",
				   proc->name, error_msg);
	    msg = error_msg;
	    break;
	}
    }
    FUNC1(v);

    /* If the default quality check isn't used, lets check that the
     * old quality function the user have set too */
    if (msg == NULL && passwd_quality_check != min_length_passwd_quality_v0) {
	msg = FUNC5) (context, principal, pwd_data);
	if (msg)
	    FUNC3(context, 0, "(old) password policy "
				   "failed with %s", msg);

    }
    return msg;
}