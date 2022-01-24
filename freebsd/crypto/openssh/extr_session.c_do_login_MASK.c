#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_name; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  from ;
struct TYPE_8__ {scalar_t__ use_pam; int /*<<< orphan*/  use_dns; } ;
struct TYPE_7__ {TYPE_1__* authctxt; int /*<<< orphan*/  tty; struct passwd* pw; } ;
struct TYPE_6__ {scalar_t__ force_pwchange; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ options ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_privsep ; 
 int /*<<< orphan*/  utmp_len ; 

void
FUNC14(struct ssh *ssh, Session *s, const char *command)
{
	socklen_t fromlen;
	struct sockaddr_storage from;
	struct passwd * pw = s->pw;
	pid_t pid = FUNC7();

	/*
	 * Get IP address of client. If the connection is not a socket, let
	 * the address be 0.0.0.0.
	 */
	FUNC8(&from, 0, sizeof(from));
	fromlen = sizeof(from);
	if (FUNC9()) {
		if (FUNC6(FUNC10(),
		    (struct sockaddr *)&from, &fromlen) < 0) {
			FUNC2("getpeername: %.100s", FUNC13(errno));
			FUNC1(255);
		}
	}

	/* Record that there was a login on that tty from the remote host. */
	if (!use_privsep)
		FUNC11(pid, s->tty, pw->pw_name, pw->pw_uid,
		    FUNC12(ssh, utmp_len,
		    options.use_dns),
		    (struct sockaddr *)&from, fromlen);

#ifdef USE_PAM
	/*
	 * If password change is needed, do it now.
	 * This needs to occur before the ~/.hushlogin check.
	 */
	if (options.use_pam && !use_privsep && s->authctxt->force_pwchange) {
		display_loginmsg();
		do_pam_chauthtok();
		s->authctxt->force_pwchange = 0;
		/* XXX - signal [net] parent to enable forwardings */
	}
#endif

	if (FUNC0(s, command))
		return;

	FUNC3();

	FUNC4();
}