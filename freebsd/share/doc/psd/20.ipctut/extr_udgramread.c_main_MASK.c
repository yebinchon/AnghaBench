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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 char* NAME ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

FUNC9()
{
	int sock, length;
	struct sockaddr_un name;
	char buf[1024];

	/* Create socket from which to read. */
	sock = FUNC6(AF_UNIX, SOCK_DGRAM, 0);
	if (sock < 0) {
		FUNC3("opening datagram socket");
		FUNC2(1);
	}
	/* Create name. */
	name.sun_family = AF_UNIX;
	FUNC7(name.sun_path, NAME);
	if (FUNC0(sock, &name, sizeof(struct sockaddr_un))) {
		FUNC3("binding name to datagram socket");
		FUNC2(1);
	}
	FUNC4("socket -->%s\en", NAME);
	/* Read from the socket */
	if (FUNC5(sock, buf, 1024) < 0)
		FUNC3("receiving datagram packet");
	FUNC4("-->%s\en", buf);
	FUNC1(sock);
	FUNC8(NAME);
}