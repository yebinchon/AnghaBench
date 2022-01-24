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
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  optval ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 scalar_t__ FUNC0 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int*) ; 

__attribute__((used)) static int
FUNC7(int sockfd, const struct sockaddr *serv_addr,
    socklen_t addrlen, int *timeoutp)
{
	int optval = 0;
	socklen_t optlen = sizeof(optval);

	/* No timeout: just do a blocking connect() */
	if (*timeoutp <= 0)
		return FUNC0(sockfd, serv_addr, addrlen);

	FUNC3(sockfd);
	if (FUNC0(sockfd, serv_addr, addrlen) == 0) {
		/* Succeeded already? */
		FUNC5(sockfd);
		return 0;
	} else if (errno != EINPROGRESS)
		return -1;

	if (FUNC6(sockfd, timeoutp) == -1)
		return -1;

	/* Completed or failed */
	if (FUNC2(sockfd, SOL_SOCKET, SO_ERROR, &optval, &optlen) == -1) {
		FUNC1("getsockopt: %s", FUNC4(errno));
		return -1;
	}
	if (optval != 0) {
		errno = optval;
		return -1;
	}
	FUNC5(sockfd);
	return 0;
}