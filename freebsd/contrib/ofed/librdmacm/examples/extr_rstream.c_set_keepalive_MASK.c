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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  optlen ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_KEEPIDLE ; 
 int keepalive ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC4(int fd)
{
	int optval;
	socklen_t optlen = sizeof(optlen);

	optval = 1;
	if (FUNC3(fd, SOL_SOCKET, SO_KEEPALIVE, &optval, optlen)) {
		FUNC0("rsetsockopt SO_KEEPALIVE");
		return;
	}

	optval = keepalive;
	if (FUNC3(fd, IPPROTO_TCP, TCP_KEEPIDLE, &optval, optlen))
		FUNC0("rsetsockopt TCP_KEEPIDLE");

	if (!(FUNC2(fd, SOL_SOCKET, SO_KEEPALIVE, &optval, &optlen)))
		FUNC1("Keepalive: %s\n", (optval ? "ON" : "OFF"));

	if (!(FUNC2(fd, IPPROTO_TCP, TCP_KEEPIDLE, &optval, &optlen)))
		FUNC1("  time: %i\n", optval);
}