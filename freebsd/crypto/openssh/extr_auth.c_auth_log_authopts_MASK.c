#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshauthopt {size_t nenv; size_t npermitopen; size_t npermitlisten; int force_tun_device; char* force_command; scalar_t__ valid_before; char* cert_principals; char** env; char** permitopen; char** permitlisten; scalar_t__ permit_port_forwarding_flag; scalar_t__ permit_agent_forwarding_flag; scalar_t__ permit_x11_forwarding_flag; scalar_t__ permit_user_rc; scalar_t__ permit_pty_flag; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int allow_tcp_forwarding; scalar_t__ permit_user_env; } ;

/* Variables and functions */
 int FORWARD_LOCAL ; 
 int FORWARD_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

void
FUNC4(const char *loc, const struct sshauthopt *opts, int do_remote)
{
	int do_env = options.permit_user_env && opts->nenv > 0;
	int do_permitopen = opts->npermitopen > 0 &&
	    (options.allow_tcp_forwarding & FORWARD_LOCAL) != 0;
	int do_permitlisten = opts->npermitlisten > 0 &&
	    (options.allow_tcp_forwarding & FORWARD_REMOTE) != 0;
	size_t i;
	char msg[1024], buf[64];

	FUNC3(buf, sizeof(buf), "%d", opts->force_tun_device);
	/* Try to keep this alphabetically sorted */
	FUNC3(msg, sizeof(msg), "key options:%s%s%s%s%s%s%s%s%s%s%s%s%s",
	    opts->permit_agent_forwarding_flag ? " agent-forwarding" : "",
	    opts->force_command == NULL ? "" : " command",
	    do_env ?  " environment" : "",
	    opts->valid_before == 0 ? "" : "expires",
	    do_permitopen ?  " permitopen" : "",
	    do_permitlisten ?  " permitlisten" : "",
	    opts->permit_port_forwarding_flag ? " port-forwarding" : "",
	    opts->cert_principals == NULL ? "" : " principals",
	    opts->permit_pty_flag ? " pty" : "",
	    opts->force_tun_device == -1 ? "" : " tun=",
	    opts->force_tun_device == -1 ? "" : buf,
	    opts->permit_user_rc ? " user-rc" : "",
	    opts->permit_x11_forwarding_flag ? " x11-forwarding" : "");

	FUNC1("%s: %s", loc, msg);
	if (do_remote)
		FUNC0("%s: %s", loc, msg);

	if (options.permit_user_env) {
		for (i = 0; i < opts->nenv; i++) {
			FUNC1("%s: environment: %s", loc, opts->env[i]);
			if (do_remote) {
				FUNC0("%s: environment: %s",
				    loc, opts->env[i]);
			}
		}
	}

	/* Go into a little more details for the local logs. */
	if (opts->valid_before != 0) {
		FUNC2(opts->valid_before, buf, sizeof(buf));
		FUNC1("%s: expires at %s", loc, buf);
	}
	if (opts->cert_principals != NULL) {
		FUNC1("%s: authorized principals: \"%s\"",
		    loc, opts->cert_principals);
	}
	if (opts->force_command != NULL)
		FUNC1("%s: forced command: \"%s\"", loc, opts->force_command);
	if (do_permitopen) {
		for (i = 0; i < opts->npermitopen; i++) {
			FUNC1("%s: permitted open: %s",
			    loc, opts->permitopen[i]);
		}
	}
	if (do_permitlisten) {
		for (i = 0; i < opts->npermitlisten; i++) {
			FUNC1("%s: permitted listen: %s",
			    loc, opts->permitlisten[i]);
		}
	}
}