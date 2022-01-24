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
struct auditinfo_addr {int /*<<< orphan*/  ai_termid; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  aia ;

/* Variables and functions */
 int ADE_AU_CLOSE ; 
 int ADE_AU_OPEN ; 
 int ADE_INVAL ; 
 int ADE_NOERR ; 
 int ADE_NOMEM ; 
 int AUE_audit_recovery ; 
 int AUE_audit_shutdown ; 
 int AUE_audit_startup ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct auditinfo_addr*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int event, char *path)
{
	int aufd;
	uid_t uid;
	pid_t pid;
	char *autext = NULL;
	token_t *tok;
	struct auditinfo_addr aia;

	if (event == AUE_audit_startup)
		FUNC0(&autext, "%d::Audit startup", FUNC14());
	else if (event == AUE_audit_shutdown)
		FUNC0(&autext, "%d::Audit shutdown", FUNC14());
	else if (event == AUE_audit_recovery)
		FUNC0(&autext, "%d::Audit recovery", FUNC14());
	else
		return (ADE_INVAL);
	if (autext == NULL)
		return (ADE_NOMEM);

	if ((aufd = FUNC2()) == -1) {
		FUNC9(autext);
		return (ADE_AU_OPEN);
	}
	FUNC8(&aia, sizeof(aia));
	uid = FUNC15(); pid = FUNC13();
	if ((tok = FUNC5(uid, FUNC11(), FUNC10(), uid, FUNC12(),
	    pid, pid, &aia.ai_termid)) != NULL)
		FUNC7(aufd, tok);
	if ((tok = FUNC6(autext)) != NULL)
		FUNC7(aufd, tok);
	FUNC9(autext);
	if (path != NULL && (tok = FUNC3(path)) != NULL)
		FUNC7(aufd, tok);
	if ((tok = FUNC4(0, 0)) != NULL)
		FUNC7(aufd, tok);
	if (FUNC1(aufd, 1, event) == -1)
		return (ADE_AU_CLOSE);

	return (ADE_NOERR);
}