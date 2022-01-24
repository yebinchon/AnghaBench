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
 int /*<<< orphan*/  AU_TO_NO_WRITE ; 
 int /*<<< orphan*/  AU_TO_WRITE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int kAUCloseErr ; 
 int kAUMakeReturnTokErr ; 
 int kAUNoErr ; 
 int kAUOpenErr ; 
 int kAUWriteCallerTokErr ; 
 int kAUWriteReturnTokErr ; 
 int kAUWriteSubjectTokErr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC6(short event_code, token_t *subject, token_t *misctok, char retval,
    int errcode)
{
	int aufd;
	char *func = "audit_write()";
	token_t *rettok;

	if ((aufd = FUNC2()) == -1) {
		FUNC1(subject);
		FUNC1(misctok);
		FUNC5(LOG_ERR, "%s: au_open() failed", func);
		return (kAUOpenErr);
	}

	/* Save subject. */
	if (subject && FUNC4(aufd, subject) == -1) {
		FUNC1(subject);
		FUNC1(misctok);
		(void)FUNC0(aufd, AU_TO_NO_WRITE, event_code);
		FUNC5(LOG_ERR, "%s: write of subject failed", func);
		return (kAUWriteSubjectTokErr);
	}

	/* Save the event-specific token. */
	if (misctok && FUNC4(aufd, misctok) == -1) {
		FUNC1(misctok);
		(void)FUNC0(aufd, AU_TO_NO_WRITE, event_code);
		FUNC5(LOG_ERR, "%s: write of caller token failed", func);
		return (kAUWriteCallerTokErr);
	}

	/* Tokenize and save the return value. */
	if ((rettok = FUNC3(retval, errcode)) == NULL) {
		(void)FUNC0(aufd, AU_TO_NO_WRITE, event_code);
		FUNC5(LOG_ERR, "%s: au_to_return32() failed", func);
		return (kAUMakeReturnTokErr);
	}

	if (FUNC4(aufd, rettok) == -1) {
		FUNC1(rettok);
		(void)FUNC0(aufd, AU_TO_NO_WRITE, event_code);
		FUNC5(LOG_ERR, "%s: write of return code failed", func);
		return (kAUWriteReturnTokErr);
	}

	/*
	 * We assume the caller wouldn't have bothered with this
	 * function if it hadn't already decided to keep the record.
	 */
	if (FUNC0(aufd, AU_TO_WRITE, event_code) < 0) {
		FUNC5(LOG_ERR, "%s: au_close() failed", func);
		return (kAUCloseErr);
	}

	return (kAUNoErr);
}