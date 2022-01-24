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
struct logininfo {scalar_t__ type; int /*<<< orphan*/  username; int /*<<< orphan*/  line; int /*<<< orphan*/  hostname; } ;

/* Variables and functions */
 scalar_t__ LTYPE_LOGIN ; 
 scalar_t__ LTYPE_LOGOUT ; 
 int /*<<< orphan*/  FUNC0 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct logininfo*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct logininfo*) ; 
 int /*<<< orphan*/  loginmsg ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC9 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct logininfo*) ; 

int
FUNC12(struct logininfo *li)
{
#ifndef HAVE_CYGWIN
	if (FUNC2() != 0) {
		FUNC5("Attempt to write login records by non-root user (aborting)");
		return (1);
	}
#endif

	/* set the timestamp */
	FUNC4(li);
#ifdef USE_LOGIN
	syslogin_write_entry(li);
#endif
#ifdef USE_LASTLOG
	if (li->type == LTYPE_LOGIN)
		lastlog_write_entry(li);
#endif
#ifdef USE_UTMP
	utmp_write_entry(li);
#endif
#ifdef USE_WTMP
	wtmp_write_entry(li);
#endif
#ifdef USE_UTMPX
	utmpx_write_entry(li);
#endif
#ifdef USE_WTMPX
	wtmpx_write_entry(li);
#endif
#ifdef CUSTOM_SYS_AUTH_RECORD_LOGIN
	if (li->type == LTYPE_LOGIN &&
	    !sys_auth_record_login(li->username,li->hostname,li->line,
	    &loginmsg))
		logit("Writing login record failed for %s", li->username);
#endif
#ifdef SSH_AUDIT_EVENTS
	if (li->type == LTYPE_LOGIN)
		audit_session_open(li);
	else if (li->type == LTYPE_LOGOUT)
		audit_session_close(li);
#endif
	return (0);
}