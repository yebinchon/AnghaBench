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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_PKTINFO ; 
 int /*<<< orphan*/  IP_RECVPKTINFO ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC1 (int,struct sockaddr const*,int) ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sockaddr_in *sin) {
	int s, one;
	socklen_t len = sizeof(*sin);

	if ((s = FUNC6(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
		FUNC0("socket");

	FUNC4(sin, 0, len);
	sin->sin_family = AF_INET;
	sin->sin_len = len;
	sin->sin_port = 0;
	sin->sin_addr.s_addr = FUNC3(INADDR_LOOPBACK);

	if (FUNC1(s, (const struct sockaddr *)sin, len) == -1)
		FUNC0("bind");

	if (FUNC2(s, (struct sockaddr *)sin, &len) == -1)
		FUNC0("getsockname");

	one = 1;
	if (FUNC5(s, IPPROTO_IP, IP_PKTINFO, &one, sizeof(one)) == -1)
		FUNC0("setsockopt");
	if (FUNC5(s, IPPROTO_IP, IP_RECVPKTINFO, &one, sizeof(one)) == -1)
		FUNC0("setsockopt");

	return s;
}