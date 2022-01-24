#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct stat {int dummy; } ;
struct ssh {int dummy; } ;
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/ * h_addr_list; } ;
typedef  int /*<<< orphan*/  hostname ;
struct TYPE_7__ {int /*<<< orphan*/  permit_x11_forwarding_flag; } ;
struct TYPE_6__ {scalar_t__ x11_use_localhost; int /*<<< orphan*/  x11_display_offset; int /*<<< orphan*/ * xauth_location; int /*<<< orphan*/  x11_forwarding; } ;
struct TYPE_5__ {int display_number; int* x11_chanids; int screen; void* auth_display; int /*<<< orphan*/ * display; int /*<<< orphan*/  single_connection; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int NI_MAXHOST ; 
 TYPE_4__* auth_opts ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 char* FUNC6 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC7 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ options ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  session_close_single_x11 ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ssh*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*,int**) ; 
 void* FUNC13 (char*) ; 

int
FUNC14(struct ssh *ssh, Session *s)
{
	struct stat st;
	char display[512], auth_display[512];
	char hostname[NI_MAXHOST];
	u_int i;

	if (!auth_opts->permit_x11_forwarding_flag) {
		FUNC8("X11 forwarding disabled by key options.");
		return 0;
	}
	if (!options.x11_forwarding) {
		FUNC1("X11 forwarding disabled in server configuration file.");
		return 0;
	}
	if (options.xauth_location == NULL ||
	    (FUNC10(options.xauth_location, &st) == -1)) {
		FUNC8("No xauth program; cannot forward X11.");
		return 0;
	}
	if (s->display != NULL) {
		FUNC1("X11 display already set.");
		return 0;
	}
	if (FUNC12(ssh, options.x11_display_offset,
	    options.x11_use_localhost, s->single_connection,
	    &s->display_number, &s->x11_chanids) == -1) {
		FUNC1("x11_create_display_inet failed.");
		return 0;
	}
	for (i = 0; s->x11_chanids[i] != -1; i++) {
		FUNC0(ssh, s->x11_chanids[i],
		    session_close_single_x11, 0);
	}

	/* Set up a suitable value for the DISPLAY variable. */
	if (FUNC5(hostname, sizeof(hostname)) < 0)
		FUNC3("gethostname: %.100s", FUNC11(errno));
	/*
	 * auth_display must be used as the displayname when the
	 * authorization entry is added with xauth(1).  This will be
	 * different than the DISPLAY string for localhost displays.
	 */
	if (options.x11_use_localhost) {
		FUNC9(display, sizeof display, "localhost:%u.%u",
		    s->display_number, s->screen);
		FUNC9(auth_display, sizeof auth_display, "unix:%u.%u",
		    s->display_number, s->screen);
		s->display = FUNC13(display);
		s->auth_display = FUNC13(auth_display);
	} else {
#ifdef IPADDR_IN_DISPLAY
		struct hostent *he;
		struct in_addr my_addr;

		he = gethostbyname(hostname);
		if (he == NULL) {
			error("Can't get IP address for X11 DISPLAY.");
			packet_send_debug("Can't get IP address for X11 DISPLAY.");
			return 0;
		}
		memcpy(&my_addr, he->h_addr_list[0], sizeof(struct in_addr));
		snprintf(display, sizeof display, "%.50s:%u.%u", inet_ntoa(my_addr),
		    s->display_number, s->screen);
#else
		FUNC9(display, sizeof display, "%.400s:%u.%u", hostname,
		    s->display_number, s->screen);
#endif
		s->display = FUNC13(display);
		s->auth_display = FUNC13(display);
	}

	return 1;
}