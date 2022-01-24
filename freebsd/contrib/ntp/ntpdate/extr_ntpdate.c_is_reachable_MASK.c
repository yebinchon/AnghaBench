#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa; } ;
typedef  TYPE_1__ sockaddr_u ;
typedef  int SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (sockaddr_u *dst)
{
	SOCKET sockfd;

	sockfd = FUNC4(FUNC0(dst), SOCK_DGRAM, 0);
	if (sockfd == -1) {
		return 0;
	}

	if (FUNC3(sockfd, &dst->sa, FUNC1(dst))) {
		FUNC2(sockfd);
		return 0;
	}
	FUNC2(sockfd);
	return 1;
}