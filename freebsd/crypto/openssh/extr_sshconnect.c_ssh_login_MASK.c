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
typedef  int /*<<< orphan*/  u_short ;
struct sockaddr {int dummy; } ;
struct passwd {char const* pw_name; } ;
struct TYPE_2__ {char* user; } ;
typedef  int /*<<< orphan*/  Sensitive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*) ; 

void
FUNC8(Sensitive *sensitive, const char *orighost,
    struct sockaddr *hostaddr, u_short port, struct passwd *pw, int timeout_ms)
{
	char *host;
	char *server_user, *local_user;

	local_user = FUNC7(pw->pw_name);
	server_user = options.user ? options.user : local_user;

	/* Convert the user-supplied hostname into all lowercase. */
	host = FUNC7(orighost);
	FUNC2(host);

	/* Exchange protocol version identification strings with the server. */
	FUNC4(timeout_ms);

	/* Put the connection into non-blocking mode. */
	FUNC3();

	/* key exchange */
	/* authenticate user */
	FUNC0("Authenticating to %s:%d as '%s'", host, port, server_user);
	FUNC5(host, hostaddr, port);
	FUNC6(local_user, server_user, host, sensitive);
	FUNC1(local_user);
}