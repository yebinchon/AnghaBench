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
struct socket_info {int family; int type; int protocol; int fd; } ;

/* Variables and functions */
#define  AF_INET 132 
#define  AF_INET6 131 
#define  AF_UNIX 130 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  EPROTONOSUPPORT ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket_info*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sockets ; 

int FUNC4(int family, int type, int protocol)
{
	struct socket_info *si;
	int fd;

	if (!FUNC3()) {
		return FUNC2(family, type, protocol);
	}

	switch (family) {
	case AF_INET:
#ifdef HAVE_IPV6
	case AF_INET6:
#endif
		break;
	case AF_UNIX:
		return FUNC2(family, type, protocol);
	default:
		errno = EAFNOSUPPORT;
		return -1;
	}

	switch (type) {
	case SOCK_STREAM:
		break;
	case SOCK_DGRAM:
		break;
	default:
		errno = EPROTONOSUPPORT;
		return -1;
	}

#if 0
	switch (protocol) {
	case 0:
		break;
	default:
		errno = EPROTONOSUPPORT;
		return -1;
	}
#endif

	fd = FUNC2(AF_UNIX, type, 0);

	if (fd == -1) return -1;

	si = (struct socket_info *)FUNC1(1, sizeof(struct socket_info));

	si->family = family;
	si->type = type;
	si->protocol = protocol;
	si->fd = fd;

	FUNC0(sockets, si);

	return si->fd;
}