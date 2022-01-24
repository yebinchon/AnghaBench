#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/ * h_addr_list; } ;

/* Variables and functions */
 void* AF_INET ; 
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  EX_NOHOST ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC4 (char*) ; 
 int FUNC5 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 char* FUNC8 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13(int argc, char **argv)
{
	struct sockaddr_in local, remote;
	struct hostent *hp;
	int s, rv, namelen;

	argc--, argv++;

	if (!*argv) {
		FUNC3(EX_USAGE, "must supply a hostname");
	}

	hp = FUNC4(*argv);
	if (!hp) {
		FUNC3(EX_NOHOST, "cannot resolve hostname: %s", *argv);
	}

	FUNC9(&remote.sin_addr, hp->h_addr_list[0], sizeof remote.sin_addr);
	remote.sin_port = FUNC7(60000);
	remote.sin_family = AF_INET;
	remote.sin_len = sizeof remote;

	local.sin_addr.s_addr = FUNC6(INADDR_ANY);
	local.sin_port = FUNC7(60000);
	local.sin_family = AF_INET;
	local.sin_len = sizeof local;

	s = FUNC12(PF_INET, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC2(EX_OSERR, "socket");

	do {
		rv = FUNC0(s, (struct sockaddr *)&local, sizeof local);
		local.sin_port = FUNC7(FUNC10(local.sin_port) + 1);
	} while(rv < 0 && errno == EADDRINUSE);

	if (rv < 0)
		FUNC2(EX_OSERR, "bind");

	do {
		rv = FUNC1(s, (struct sockaddr *)&remote, sizeof remote);
		remote.sin_port = FUNC7(FUNC10(remote.sin_port) + 1);
	} while(rv < 0 && errno == EADDRINUSE);

	if (rv < 0)
		FUNC2(EX_OSERR, "connect");

	namelen = sizeof local;
	rv = FUNC5(s, (struct sockaddr *)&local, &namelen);
	if (rv < 0)
		FUNC2(EX_OSERR, "getsockname");

	FUNC11("Route to %s is out %s\n", *argv, FUNC8(local.sin_addr));
	return 0;
}