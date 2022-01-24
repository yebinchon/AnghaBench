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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  PAM_AUTHTOK 129 
 int PAM_AUTHTOK_PROMPT ; 
 int PAM_AUTH_ERR ; 
 int PAM_BAD_CONSTANT ; 
 int PAM_HOST ; 
 int /*<<< orphan*/  PAM_MAX_RESP_SIZE ; 
#define  PAM_OLDAUTHTOK 128 
 int PAM_OLDAUTHTOK_PROMPT ; 
 int PAM_PROMPT_ECHO_OFF ; 
 int PAM_PROMPT_ECHO_ON ; 
 int PAM_RHOST ; 
 int PAM_SUCCESS ; 
 int PAM_TRY_AGAIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* authtok_prompt ; 
 char* authtok_prompt_remote ; 
 char* newauthtok_prompt ; 
 char* oldauthtok_prompt ; 
 void* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,void const**) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char**,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(pam_handle_t *pamh,
	int item,
	const char **authtok,
	const char *prompt)
{
	char prompt_buf[1024];
	size_t prompt_size;
	const void *oldauthtok, *prevauthtok, *promptp;
	const char *prompt_option, *default_prompt;
	const void *lhost, *rhost;
	char *resp, *resp2;
	int pitem, r, style, twice;

	FUNC0();
	*authtok = NULL;
	twice = 0;
	switch (item) {
	case PAM_AUTHTOK:
		pitem = PAM_AUTHTOK_PROMPT;
		prompt_option = "authtok_prompt";
		default_prompt = authtok_prompt;
		r = FUNC5(pamh, PAM_RHOST, &rhost);
		if (r == PAM_SUCCESS && rhost != NULL) {
			r = FUNC5(pamh, PAM_HOST, &lhost);
			if (r == PAM_SUCCESS && lhost != NULL) {
				if (FUNC8(rhost, lhost) != 0)
					default_prompt = authtok_prompt_remote;
			}
		}
		r = FUNC5(pamh, PAM_OLDAUTHTOK, &oldauthtok);
		if (r == PAM_SUCCESS && oldauthtok != NULL) {
			default_prompt = newauthtok_prompt;
			twice = 1;
		}
		break;
	case PAM_OLDAUTHTOK:
		pitem = PAM_OLDAUTHTOK_PROMPT;
		prompt_option = "oldauthtok_prompt";
		default_prompt = oldauthtok_prompt;
		twice = 0;
		break;
	default:
		FUNC2(PAM_BAD_CONSTANT);
	}
	if (FUNC3(pamh, "try_first_pass") ||
	    FUNC3(pamh, "use_first_pass")) {
		r = FUNC5(pamh, item, &prevauthtok);
		if (r == PAM_SUCCESS && prevauthtok != NULL) {
			*authtok = prevauthtok;
			FUNC2(PAM_SUCCESS);
		} else if (FUNC3(pamh, "use_first_pass")) {
			FUNC2(r == PAM_SUCCESS ? PAM_AUTH_ERR : r);
		}
	}
	/* pam policy overrides the module's choice */
	if ((promptp = FUNC3(pamh, prompt_option)) != NULL)
		prompt = promptp;
	/* no prompt provided, see if there is one tucked away somewhere */
	if (prompt == NULL) {
		r = FUNC5(pamh, pitem, &promptp);
		if (r == PAM_SUCCESS && promptp != NULL)
			prompt = promptp;
	}
	/* fall back to hardcoded default */
	if (prompt == NULL)
		prompt = default_prompt;
	/* expand */
	prompt_size = sizeof prompt_buf;
	r = FUNC4(pamh, prompt_buf, &prompt_size, prompt);
	if (r == PAM_SUCCESS && prompt_size <= sizeof prompt_buf)
		prompt = prompt_buf;
	style = FUNC3(pamh, "echo_pass") ?
	    PAM_PROMPT_ECHO_ON : PAM_PROMPT_ECHO_OFF;
	r = FUNC6(pamh, style, &resp, "%s", prompt);
	if (r != PAM_SUCCESS)
		FUNC2(r);
	if (twice) {
		r = FUNC6(pamh, style, &resp2, "Retype %s", prompt);
		if (r != PAM_SUCCESS) {
			FUNC9(resp, 0, PAM_MAX_RESP_SIZE);
			FUNC1(resp);
			FUNC2(r);
		}
		if (FUNC8(resp, resp2) != 0) {
			FUNC9(resp, 0, PAM_MAX_RESP_SIZE);
			FUNC1(resp);
		}
		FUNC9(resp2, 0, PAM_MAX_RESP_SIZE);
		FUNC1(resp2);
	}
	if (resp == NULL)
		FUNC2(PAM_TRY_AGAIN);
	r = FUNC7(pamh, item, resp);
	FUNC9(resp, 0, PAM_MAX_RESP_SIZE);
	FUNC1(resp);
	if (r != PAM_SUCCESS)
		FUNC2(r);
	r = FUNC5(pamh, item, (const void **)authtok);
	FUNC2(r);
}