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
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int FUNC3 (short,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int kAUMakeSubjectTokErr ; 
 int kAUMakeTextTokErr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC5(short event_code, char *errmsg, int errret)
{
	char *func = "audit_write_failure_self()";
	token_t *subject, *errtok;

	if ((subject = FUNC1()) == NULL) {
		FUNC4(LOG_ERR, "%s: au_to_me() failed", func);
		return (kAUMakeSubjectTokErr);
	}
	/* tokenize and save the error message */
	if ((errtok = FUNC2(errmsg)) == NULL) {
		FUNC0(subject);
		FUNC4(LOG_ERR, "%s: au_to_text() failed", func);
		return (kAUMakeTextTokErr);
	}
	return (FUNC3(event_code, subject, errtok, -1, errret));
}