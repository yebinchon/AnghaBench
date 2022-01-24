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
typedef  int /*<<< orphan*/  rbuf ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int MIN_SOCKBUF ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int /*<<< orphan*/  SO_PASSIFNAME ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(int sock,
	 const char *name)
{
	int on;
#define MIN_SOCKBUF (4*1024)
	static int rbuf;

	if (FUNC0(sock, F_SETFL, O_NONBLOCK) == -1)
		FUNC1(1, "fcntl(%s) O_NONBLOCK: %s",
		       name, FUNC4(errno));
	on = 1;
	if (FUNC3(sock, SOL_SOCKET,SO_BROADCAST, &on,sizeof(on)) < 0)
		FUNC2("setsockopt(%s,SO_BROADCAST): %s",
		       name, FUNC4(errno));
#ifdef USE_PASSIFNAME
	on = 1;
	if (setsockopt(sock, SOL_SOCKET, SO_PASSIFNAME, &on,sizeof(on)) < 0)
		msglog("setsockopt(%s,SO_PASSIFNAME): %s",
		       name, strerror(errno));
#endif

	if (rbuf >= MIN_SOCKBUF) {
		if (FUNC3(sock, SOL_SOCKET, SO_RCVBUF,
			       &rbuf, sizeof(rbuf)) < 0)
			FUNC2("setsockopt(%s,SO_RCVBUF=%d): %s",
			       name, rbuf, FUNC4(errno));
	} else {
		for (rbuf = 60*1024; ; rbuf -= 4096) {
			if (FUNC3(sock, SOL_SOCKET, SO_RCVBUF,
				       &rbuf, sizeof(rbuf)) == 0) {
				FUNC5("RCVBUF=%d", rbuf);
				break;
			}
			if (rbuf < MIN_SOCKBUF) {
				FUNC2("setsockopt(%s,SO_RCVBUF = %d): %s",
				       name, rbuf, FUNC4(errno));
				break;
			}
		}
	}
}