#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_name; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
struct TYPE_5__ {int /*<<< orphan*/  use_dns; } ;
struct TYPE_4__ {int /*<<< orphan*/  tty; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 struct ssh* active_state ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ options ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  utmp_len ; 

__attribute__((used)) static void
FUNC9(Session *s, struct passwd *pw)
{
	struct ssh *ssh = active_state;	/* XXX */
	socklen_t fromlen;
	struct sockaddr_storage from;

	/*
	 * Get IP address of client. If the connection is not a socket, let
	 * the address be 0.0.0.0.
	 */
	FUNC3(&from, 0, sizeof(from));
	fromlen = sizeof(from);
	if (FUNC4()) {
		if (FUNC2(FUNC5(),
		    (struct sockaddr *)&from, &fromlen) < 0) {
			FUNC1("getpeername: %.100s", FUNC8(errno));
			FUNC0(255);
		}
	}
	/* Record that there was a login on that tty from the remote host. */
	FUNC6(s->pid, s->tty, pw->pw_name, pw->pw_uid,
	    FUNC7(ssh, utmp_len, options.use_dns),
	    (struct sockaddr *)&from, fromlen);
}