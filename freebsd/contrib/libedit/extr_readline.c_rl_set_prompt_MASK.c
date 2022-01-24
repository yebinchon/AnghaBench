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

/* Variables and functions */
 int /*<<< orphan*/  RL_PROMPT_END_IGNORE ; 
 char RL_PROMPT_START_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/ * rl_prompt ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*) ; 

int
FUNC6(const char *prompt)
{
	char *p;

	if (!prompt)
		prompt = "";
	if (rl_prompt != NULL && FUNC3(rl_prompt, prompt) == 0)
		return 0;
	if (rl_prompt)
		FUNC0(rl_prompt);
	rl_prompt = FUNC4(prompt);
	if (rl_prompt == NULL)
		return -1;

	while ((p = FUNC2(rl_prompt, RL_PROMPT_END_IGNORE)) != NULL) {
		/* Remove adjacent end/start markers to avoid double-escapes. */
		if (p[1] == RL_PROMPT_START_IGNORE) {
			FUNC1(p, p + 2, 1 + FUNC5(p + 2));
		} else {
			*p = RL_PROMPT_START_IGNORE;
		}
	}

	return 0;
}