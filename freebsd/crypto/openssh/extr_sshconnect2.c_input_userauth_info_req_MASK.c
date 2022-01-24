#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int info_req_seen; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  RP_ECHO ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_INFO_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ssh*,int) ; 
 int FUNC7 (struct ssh*,char**,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ssh*) ; 
 int FUNC9 (struct ssh*,scalar_t__*) ; 
 int FUNC10 (struct ssh*,scalar_t__*) ; 
 int FUNC11 (struct ssh*,char*) ; 
 int FUNC12 (struct ssh*,scalar_t__) ; 
 int FUNC13 (struct ssh*) ; 
 int FUNC14 (struct ssh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*) ; 

int
FUNC16(int type, u_int32_t seq, struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	char *name = NULL, *inst = NULL, *lang = NULL, *prompt = NULL;
	char *response = NULL;
	u_char echo = 0;
	u_int num_prompts, i;
	int r;

	FUNC0("input_userauth_info_req");

	if (authctxt == NULL)
		FUNC1("input_userauth_info_req: no authentication context");

	authctxt->info_req_seen = 1;

	if ((r = FUNC7(ssh, &name, NULL)) != 0 ||
	    (r = FUNC7(ssh, &inst, NULL)) != 0 ||
	    (r = FUNC7(ssh, &lang, NULL)) != 0)
		goto out;
	if (FUNC15(name) > 0)
		FUNC4("%s", name);
	if (FUNC15(inst) > 0)
		FUNC4("%s", inst);

	if ((r = FUNC9(ssh, &num_prompts)) != 0)
		goto out;
	/*
	 * Begin to build info response packet based on prompts requested.
	 * We commit to providing the correct number of responses, so if
	 * further on we run into a problem that prevents this, we have to
	 * be sure and clean this up and send a correct error response.
	 */
	if ((r = FUNC14(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE)) != 0 ||
	    (r = FUNC12(ssh, num_prompts)) != 0)
		goto out;

	FUNC0("input_userauth_info_req: num_prompts %d", num_prompts);
	for (i = 0; i < num_prompts; i++) {
		if ((r = FUNC7(ssh, &prompt, NULL)) != 0 ||
		    (r = FUNC10(ssh, &echo)) != 0)
			goto out;
		response = FUNC5(prompt, echo ? RP_ECHO : 0);
		if ((r = FUNC11(ssh, response)) != 0)
			goto out;
		FUNC3(response, FUNC15(response));
		FUNC2(prompt);
		response = prompt = NULL;
	}
	/* done with parsing incoming message. */
	if ((r = FUNC8(ssh)) != 0 ||
	    (r = FUNC6(ssh, 64)) != 0)
		goto out;
	r = FUNC13(ssh);
 out:
	if (response)
		FUNC3(response, FUNC15(response));
	FUNC2(prompt);
	FUNC2(name);
	FUNC2(inst);
	FUNC2(lang);
	return r;
}