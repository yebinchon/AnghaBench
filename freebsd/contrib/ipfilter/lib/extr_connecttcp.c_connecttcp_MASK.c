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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/ * h_addr_list; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 struct hostent* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(char *server, int port)
{
	struct sockaddr_in sin;
	struct hostent *host;
	int fd;

	FUNC7(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC4(port & 65535);

	if (FUNC0(*server)) {
		if (FUNC5(server, &sin.sin_addr) == -1) {
			return -1;
		}
	} else {
		host = FUNC3(server);
		if (host == NULL)
			return -1;
		FUNC6(&sin.sin_addr, host->h_addr_list[0],
		       sizeof(sin.sin_addr));
	}

	fd = FUNC8(AF_INET, SOCK_STREAM, 0);
	if (fd == -1)
		return -1;

	if (FUNC2(fd, (struct sockaddr *)&sin, sizeof(sin)) == -1) {
		FUNC1(fd);
		return -1;
	}

	return fd;
}