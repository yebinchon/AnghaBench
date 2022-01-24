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
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOSYS ; 
 int EVUTIL_SOCK_CLOEXEC ; 
 int EVUTIL_SOCK_NONBLOCK ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

evutil_socket_t
FUNC5(evutil_socket_t sockfd, struct sockaddr *addr,
    ev_socklen_t *addrlen, int flags)
{
	evutil_socket_t result;
#if defined(EVENT__HAVE_ACCEPT4) && defined(SOCK_CLOEXEC) && defined(SOCK_NONBLOCK)
	result = accept4(sockfd, addr, addrlen, flags);
	if (result >= 0 || (errno != EINVAL && errno != ENOSYS)) {
		/* A nonnegative result means that we succeeded, so return.
		 * Failing with EINVAL means that an option wasn't supported,
		 * and failing with ENOSYS means that the syscall wasn't
		 * there: in those cases we want to fall back.  Otherwise, we
		 * got a real error, and we should return. */
		return result;
	}
#endif
	result = FUNC0(sockfd, addr, addrlen);
	if (result < 0)
		return result;

	if (flags & EVUTIL_SOCK_CLOEXEC) {
		if (FUNC3(result) < 0) {
			FUNC2(result);
			return -1;
		}
	}
	if (flags & EVUTIL_SOCK_NONBLOCK) {
		if (FUNC4(result) < 0) {
			FUNC2(result);
			return -1;
		}
	}
	return result;
}