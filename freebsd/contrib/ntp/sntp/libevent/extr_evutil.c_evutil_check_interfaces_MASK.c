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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; void* sin6_port; void* sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin6_addr; void* sin6_port; void* sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin_out ;
typedef  int /*<<< orphan*/  sin6_out ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int ev_socklen_t ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*) ; 
 int FUNC5 (void*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,struct sockaddr*,int*) ; 
 scalar_t__ have_checked_interfaces ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(int force_recheck)
{
	evutil_socket_t fd = -1;
	struct sockaddr_in sin, sin_out;
	struct sockaddr_in6 sin6, sin6_out;
	ev_socklen_t sin_out_len = sizeof(sin_out);
	ev_socklen_t sin6_out_len = sizeof(sin6_out);
	int r;
	if (have_checked_interfaces && !force_recheck)
		return 0;

	if (FUNC2() == 0) {
		/* Use a nice sane interface, if this system has one. */
		return 0;
	}

	/* Ugh. There was no nice sane interface.  So to check whether we have
	 * an interface open for a given protocol, will try to make a UDP
	 * 'connection' to a remote host on the internet.  We don't actually
	 * use it, so the address doesn't matter, but we want to pick one that
	 * keep us from using a host- or link-local interface. */
	FUNC8(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC7(53);
	r = FUNC5(AF_INET, "18.244.0.188", &sin.sin_addr);
	FUNC0(r);

	FUNC8(&sin6, 0, sizeof(sin6));
	sin6.sin6_family = AF_INET6;
	sin6.sin6_port = FUNC7(53);
	r = FUNC5(AF_INET6, "2001:4860:b002::68", &sin6.sin6_addr);
	FUNC0(r);

	FUNC8(&sin_out, 0, sizeof(sin_out));
	FUNC8(&sin6_out, 0, sizeof(sin6_out));

	/* XXX some errnos mean 'no address'; some mean 'not enough sockets'. */
	if ((fd = FUNC9(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) >= 0 &&
	    FUNC1(fd, (struct sockaddr*)&sin, sizeof(sin)) == 0 &&
	    FUNC6(fd, (struct sockaddr*)&sin_out, &sin_out_len) == 0) {
		/* We might have an IPv4 interface. */
		FUNC4((struct sockaddr*) &sin_out);
	}
	if (fd >= 0)
		FUNC3(fd);

	if ((fd = FUNC9(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) >= 0 &&
	    FUNC1(fd, (struct sockaddr*)&sin6, sizeof(sin6)) == 0 &&
	    FUNC6(fd, (struct sockaddr*)&sin6_out, &sin6_out_len) == 0) {
		/* We might have an IPv6 interface. */
		FUNC4((struct sockaddr*) &sin6_out);
	}

	if (fd >= 0)
		FUNC3(fd);

	return 0;
}