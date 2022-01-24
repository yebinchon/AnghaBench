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
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (short,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int kAUMakeSubjectTokErr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC3(short event_code, token_t *tok)
{
	token_t *subject;
	char *func = "audit_write_success_self()";

	if ((subject = FUNC0()) == NULL) {
		FUNC2(LOG_ERR, "%s: au_to_me() failed", func);
		return (kAUMakeSubjectTokErr);
	}

	return (FUNC1(event_code, subject, tok, 0, 0));
}