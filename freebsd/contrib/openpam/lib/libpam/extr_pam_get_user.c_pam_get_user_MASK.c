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
 int /*<<< orphan*/  PAM_PROMPT_ECHO_ON ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  PAM_USER ; 
 int /*<<< orphan*/  PAM_USER_PROMPT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const**) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* user_prompt ; 

int
FUNC8(pam_handle_t *pamh,
	const char **user,
	const char *prompt)
{
	char prompt_buf[1024];
	size_t prompt_size;
	const void *promptp;
	char *resp;
	int r;

	FUNC0();
	r = FUNC5(pamh, PAM_USER, (const void **)user);
	if (r == PAM_SUCCESS && *user != NULL)
		FUNC2(PAM_SUCCESS);
	/* pam policy overrides the module's choice */
	if ((promptp = FUNC3(pamh, "user_prompt")) != NULL)
		prompt = promptp;
	/* no prompt provided, see if there is one tucked away somewhere */
	if (prompt == NULL) {
		r = FUNC5(pamh, PAM_USER_PROMPT, &promptp);
		if (r == PAM_SUCCESS && promptp != NULL)
			prompt = promptp;
	}
	/* fall back to hardcoded default */
	if (prompt == NULL)
		prompt = user_prompt;
	/* expand */
	prompt_size = sizeof prompt_buf;
	r = FUNC4(pamh, prompt_buf, &prompt_size, prompt);
	if (r == PAM_SUCCESS && prompt_size <= sizeof prompt_buf)
		prompt = prompt_buf;
	r = FUNC6(pamh, PAM_PROMPT_ECHO_ON, &resp, "%s", prompt);
	if (r != PAM_SUCCESS)
		FUNC2(r);
	r = FUNC7(pamh, PAM_USER, resp);
	FUNC1(resp);
	if (r != PAM_SUCCESS)
		FUNC2(r);
	r = FUNC5(pamh, PAM_USER, (const void **)user);
	FUNC2(r);
}