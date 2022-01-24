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
typedef  int /*<<< orphan*/  sunaddr ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SSH_AUTHSOCKET_ENV_NAME ; 
 int SSH_ERR_AGENT_NOT_PRESENT ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC7(int *fdp)
{
	const char *authsocket;
	int sock, oerrno;
	struct sockaddr_un sunaddr;

	if (fdp != NULL)
		*fdp = -1;

	authsocket = FUNC3(SSH_AUTHSOCKET_ENV_NAME);
	if (!authsocket)
		return SSH_ERR_AGENT_NOT_PRESENT;

	FUNC4(&sunaddr, 0, sizeof(sunaddr));
	sunaddr.sun_family = AF_UNIX;
	FUNC6(sunaddr.sun_path, authsocket, sizeof(sunaddr.sun_path));

	if ((sock = FUNC5(AF_UNIX, SOCK_STREAM, 0)) < 0)
		return SSH_ERR_SYSTEM_ERROR;

	/* close on exec */
	if (FUNC2(sock, F_SETFD, FD_CLOEXEC) == -1 ||
	    FUNC1(sock, (struct sockaddr *)&sunaddr, sizeof(sunaddr)) < 0) {
		oerrno = errno;
		FUNC0(sock);
		errno = oerrno;
		return SSH_ERR_SYSTEM_ERROR;
	}
	if (fdp != NULL)
		*fdp = sock;
	else
		FUNC0(sock);
	return 0;
}