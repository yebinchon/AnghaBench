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
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int EVUTIL_SOCK_CLOEXEC ; 
 int EVUTIL_SOCK_NONBLOCK ; 
 int SOCKET_TYPE_MASK ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,int) ; 

evutil_socket_t
FUNC4(int domain, int type, int protocol)
{
	evutil_socket_t r;
#if defined(SOCK_NONBLOCK) && defined(SOCK_CLOEXEC)
	r = socket(domain, type, protocol);
	if (r >= 0)
		return r;
	else if ((type & (SOCK_NONBLOCK|SOCK_CLOEXEC)) == 0)
		return -1;
#endif
#define SOCKET_TYPE_MASK (~(EVUTIL_SOCK_NONBLOCK|EVUTIL_SOCK_CLOEXEC))
	r = FUNC3(domain, type & SOCKET_TYPE_MASK, protocol);
	if (r < 0)
		return -1;
	if (type & EVUTIL_SOCK_NONBLOCK) {
		if (FUNC2(r) < 0) {
			FUNC0(r);
			return -1;
		}
	}
	if (type & EVUTIL_SOCK_CLOEXEC) {
		if (FUNC1(r) < 0) {
			FUNC0(r);
			return -1;
		}
	}
	return r;
}