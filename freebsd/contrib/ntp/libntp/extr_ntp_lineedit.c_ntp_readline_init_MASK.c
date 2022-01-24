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
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  hev ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ lineedit_prompt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ntp_el ; 
 int /*<<< orphan*/ * ntp_hist ; 
 int /*<<< orphan*/  ntp_prompt_callback ; 
 int ntp_readline_initted ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC11(
	const char *	prompt
	)
{
	int	success;

	success = 1;

	if (prompt) {
		if (lineedit_prompt) 
			FUNC7(lineedit_prompt);
		lineedit_prompt = FUNC5(prompt);
	}

#ifdef LE_EDITLINE
	if (NULL == ntp_el) {

# if 4 == EL_INIT_ARGS
		ntp_el = el_init(progname, stdin, stdout, stderr);
# else
		ntp_el = el_init(progname, stdin, stdout);
# endif
		if (ntp_el) {

			el_set(ntp_el, EL_PROMPT, ntp_prompt_callback);
			el_set(ntp_el, EL_EDITOR, "emacs");

			ntp_hist = history_init();

			if (NULL == ntp_hist) {

				mfprintf(stderr, "history_init(): %m\n");
				fflush(stderr);

				el_end(ntp_el);
				ntp_el = NULL;

				success = 0;

			} else {
				ZERO(hev);
#ifdef H_SETSIZE
				history(ntp_hist, &hev, H_SETSIZE, 128);
#endif
				el_set(ntp_el, EL_HIST, history,
				       ntp_hist);
				/* use any .editrc */
				el_source(ntp_el, NULL);
			}
		} else
			success = 0;
	}
#endif	/* LE_EDITLINE */

	ntp_readline_initted = success;

	return success;
}