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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct sockaddr*,int /*<<< orphan*/ ) ; 

int
FUNC7(int s, struct sockaddr_storage* addr, socklen_t addrlen)
{
	if(FUNC3(s, (struct sockaddr*)addr, addrlen) == -1) {
#ifndef USE_WINSOCK
#ifdef EINPROGRESS
		if(errno != EINPROGRESS) {
#endif
			if(FUNC6(
				(struct sockaddr*)addr, addrlen))
				FUNC4("outgoing tcp: connect",
					FUNC5(errno), addr, addrlen);
			FUNC1(s);
			return 0;
#ifdef EINPROGRESS
		}
#endif
#else /* USE_WINSOCK */
		if(WSAGetLastError() != WSAEINPROGRESS &&
			WSAGetLastError() != WSAEWOULDBLOCK) {
			closesocket(s);
			return 0;
		}
#endif
	}
	return 1;
}