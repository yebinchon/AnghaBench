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
struct timeval {int tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  server ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ TRUE ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,struct sockaddr_in*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (int,char*,int) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FUNC16()
{
	int sock, length;
	struct sockaddr_in server;
	int msgsock;
	char buf[1024];
	int rval;
	fd_set ready;
	struct timeval to;

	/* Create socket */
	sock = FUNC15(AF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		FUNC11("opening stream socket");
		FUNC7(1);
	}
	/* Name socket using wildcards */
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = 0;
	if (FUNC4(sock, &server, sizeof(server))) {
		FUNC11("binding stream socket");
		FUNC7(1);
	}
	/* Find out assigned port number and print it out */
	length = sizeof(server);
	if (FUNC8(sock, &server, &length)) {
		FUNC11("getting socket name");
		FUNC7(1);
	}
	FUNC12("Socket has port #%d\en", FUNC10(server.sin_port));

	/* Start accepting connections */
	FUNC9(sock, 5);
	do {
		FUNC2(&ready);
		FUNC1(sock, &ready);
		to.tv_sec = 5;
		if (FUNC14(sock + 1, &ready, 0, 0, &to) < 0) {
			FUNC11("select");
			continue;
		}
		if (FUNC0(sock, &ready)) {
			msgsock = FUNC3(sock, (struct sockaddr *)0, (int *)0);
			if (msgsock == -1)
				FUNC11("accept");
			else do {
				FUNC5(buf, sizeof(buf));
				if ((rval = FUNC13(msgsock, buf, 1024)) < 0)
					FUNC11("reading stream message");
				else if (rval == 0)
					FUNC12("Ending connection\en");
				else
					FUNC12("-->%s\en", buf);
			} while (rval > 0);
			FUNC6(msgsock);
		} else
			FUNC12("Do something else\en");
	} while (TRUE);
}