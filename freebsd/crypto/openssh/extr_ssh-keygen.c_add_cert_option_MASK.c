#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* key; char* val; int crit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CERTOPT_AGENT_FWD ; 
 int /*<<< orphan*/  CERTOPT_PORT_FWD ; 
 int /*<<< orphan*/  CERTOPT_PTY ; 
 int /*<<< orphan*/  CERTOPT_USER_RC ; 
 int /*<<< orphan*/  CERTOPT_X_FWD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* cert_userext ; 
 char* certflags_command ; 
 int /*<<< orphan*/  certflags_flags ; 
 char* certflags_src_addr ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ncert_userext ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int,int) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(char *opt)
{
	char *val, *cp;
	int iscrit = 0;

	if (FUNC2(opt, "clear") == 0)
		certflags_flags = 0;
	else if (FUNC2(opt, "no-x11-forwarding") == 0)
		certflags_flags &= ~CERTOPT_X_FWD;
	else if (FUNC2(opt, "permit-x11-forwarding") == 0)
		certflags_flags |= CERTOPT_X_FWD;
	else if (FUNC2(opt, "no-agent-forwarding") == 0)
		certflags_flags &= ~CERTOPT_AGENT_FWD;
	else if (FUNC2(opt, "permit-agent-forwarding") == 0)
		certflags_flags |= CERTOPT_AGENT_FWD;
	else if (FUNC2(opt, "no-port-forwarding") == 0)
		certflags_flags &= ~CERTOPT_PORT_FWD;
	else if (FUNC2(opt, "permit-port-forwarding") == 0)
		certflags_flags |= CERTOPT_PORT_FWD;
	else if (FUNC2(opt, "no-pty") == 0)
		certflags_flags &= ~CERTOPT_PTY;
	else if (FUNC2(opt, "permit-pty") == 0)
		certflags_flags |= CERTOPT_PTY;
	else if (FUNC2(opt, "no-user-rc") == 0)
		certflags_flags &= ~CERTOPT_USER_RC;
	else if (FUNC2(opt, "permit-user-rc") == 0)
		certflags_flags |= CERTOPT_USER_RC;
	else if (FUNC4(opt, "force-command=", 14) == 0) {
		val = opt + 14;
		if (*val == '\0')
			FUNC1("Empty force-command option");
		if (certflags_command != NULL)
			FUNC1("force-command already specified");
		certflags_command = FUNC6(val);
	} else if (FUNC4(opt, "source-address=", 15) == 0) {
		val = opt + 15;
		if (*val == '\0')
			FUNC1("Empty source-address option");
		if (certflags_src_addr != NULL)
			FUNC1("source-address already specified");
		if (FUNC0(NULL, val) != 0)
			FUNC1("Invalid source-address list");
		certflags_src_addr = FUNC6(val);
	} else if (FUNC4(opt, "extension:", 10) == 0 ||
		   (iscrit = (FUNC4(opt, "critical:", 9) == 0))) {
		val = FUNC6(FUNC3(opt, ':') + 1);
		if ((cp = FUNC3(val, '=')) != NULL)
			*cp++ = '\0';
		cert_userext = FUNC5(cert_userext, ncert_userext + 1,
		    sizeof(*cert_userext));
		cert_userext[ncert_userext].key = val;
		cert_userext[ncert_userext].val = cp == NULL ?
		    NULL : FUNC6(cp);
		cert_userext[ncert_userext].crit = iscrit;
		ncert_userext++;
	} else
		FUNC1("Unsupported certificate option \"%s\"", opt);
}