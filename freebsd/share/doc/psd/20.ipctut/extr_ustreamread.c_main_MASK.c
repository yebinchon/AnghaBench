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
struct sockaddr_un {char* sun_path; int /*<<< orphan*/  sun_family; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  NAME ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

FUNC12()
{
	int sock, msgsock, rval;
	struct sockaddr_un server;
	char buf[1024];

	/* Create socket */
	sock = FUNC9(AF_UNIX, SOCK_STREAM, 0);
	if (sock < 0) {
		FUNC6("opening stream socket");
		FUNC4(1);
	}
	/* Name socket using file system name */
	server.sun_family = AF_UNIX;
	FUNC10(server.sun_path, NAME);
	if (FUNC1(sock, &server, sizeof(struct sockaddr_un))) {
		FUNC6("binding stream socket");
		FUNC4(1);
	}
	FUNC7("Socket has name %s\en", server.sun_path);
	/* Start accepting connections */
	FUNC5(sock, 5);
	for (;;) {
		msgsock = FUNC0(sock, 0, 0);
		if (msgsock == -1)
			FUNC6("accept");
		else do {
			FUNC2(buf, sizeof(buf));
			if ((rval = FUNC8(msgsock, buf, 1024)) < 0)
				FUNC6("reading stream message");
			else if (rval == 0)
				FUNC7("Ending connection\en");
			else
				FUNC7("-->%s\en", buf);
		} while (rval > 0);
		FUNC3(msgsock);
	}
	/*
	 * The following statements are not executed, because they follow an
	 * infinite loop.  However, most ordinary programs will not run
	 * forever.  In the UNIX domain it is necessary to tell the file
	 * system that one is through using NAME.  In most programs one uses
	 * the call unlink() as below. Since the user will have to kill this
	 * program, it will be necessary to remove the name by a command from
	 * the shell.
	 */
	FUNC3(sock);
	FUNC11(NAME);
}