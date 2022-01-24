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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  au_tid_t ;
typedef  int /*<<< orphan*/  au_id_t ;
typedef  int /*<<< orphan*/  au_asid_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (short,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int kAUMakeSubjectTokErr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC3(short event_code, token_t *tok, au_id_t auid, uid_t euid,
    gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid,
    au_tid_t *tid)
{
	char *func = "audit_write_success()";
	token_t *subject = NULL;

	/* Tokenize and save subject. */
	subject = FUNC0(auid, euid, egid, ruid, rgid, pid, sid,
	    tid);
	if (subject == NULL) {
		FUNC2(LOG_ERR, "%s: au_to_subject32() failed", func);
		return kAUMakeSubjectTokErr;
	}

	return (FUNC1(event_code, subject, tok, 0, 0));
}