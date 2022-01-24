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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC7(const char *pathname)
{
	int sock;
	struct sockaddr_un addr;

	sock = FUNC4(AF_UNIX, SOCK_STREAM, 0);
	if (sock < 0)
		FUNC2("socket: %.100s", FUNC5(errno));
	FUNC3(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC6(addr.sun_path, pathname, sizeof addr.sun_path);
	if (FUNC1(sock, (struct sockaddr *)&addr, sizeof(addr)) == 0)
		return sock;
	FUNC0(sock);
	FUNC2("connect %.100s: %.100s", addr.sun_path, FUNC5(errno));
	return -1;
}