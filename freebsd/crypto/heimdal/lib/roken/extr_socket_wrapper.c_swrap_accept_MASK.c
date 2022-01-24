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
typedef  int /*<<< orphan*/  un_my_addr ;
typedef  int /*<<< orphan*/  un_addr ;
struct socket_info {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int /*<<< orphan*/  family; void* peername; scalar_t__ peername_len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; } ;
struct sockaddr_un {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int /*<<< orphan*/  family; void* peername; scalar_t__ peername_len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; } ;
struct sockaddr {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int /*<<< orphan*/  family; void* peername; scalar_t__ peername_len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; } ;
typedef  scalar_t__ socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SWRAP_ACCEPT_ACK ; 
 int /*<<< orphan*/  SWRAP_ACCEPT_RECV ; 
 int /*<<< orphan*/  SWRAP_ACCEPT_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 struct socket_info* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket_info*) ; 
 struct socket_info* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_info*,struct socket_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct socket_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,struct socket_info*,scalar_t__*) ; 
 int FUNC8 (int,struct socket_info*,scalar_t__*) ; 
 int FUNC9 (struct socket_info*,struct socket_info*,scalar_t__,int /*<<< orphan*/ ,struct socket_info*,scalar_t__*) ; 
 void* FUNC10 (struct socket_info*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sockets ; 
 int /*<<< orphan*/  FUNC12 (struct socket_info*,struct socket_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(int s, struct sockaddr *addr, socklen_t *addrlen)
{
	struct socket_info *parent_si, *child_si;
	int fd;
	struct sockaddr_un un_addr;
	socklen_t un_addrlen = sizeof(un_addr);
	struct sockaddr_un un_my_addr;
	socklen_t un_my_addrlen = sizeof(un_my_addr);
	struct sockaddr *my_addr;
	socklen_t my_addrlen, len;
	int ret;

	parent_si = FUNC2(s);
	if (!parent_si) {
		return FUNC7(s, addr, addrlen);
	}

	/*
	 * assume out sockaddr have the same size as the in parent
	 * socket family
	 */
	my_addrlen = FUNC11(parent_si->family);
	if (my_addrlen < 0) {
		errno = EINVAL;
		return -1;
	}

	my_addr = FUNC4(my_addrlen);
	if (my_addr == NULL) {
		return -1;
	}

	FUNC6(&un_addr, 0, sizeof(un_addr));
	FUNC6(&un_my_addr, 0, sizeof(un_my_addr));

	ret = FUNC7(s, (struct sockaddr *)&un_addr, &un_addrlen);
	if (ret == -1) {
		FUNC3(my_addr);
		return ret;
	}

	fd = ret;

	len = my_addrlen;
	ret = FUNC9(parent_si, &un_addr, un_addrlen,
				       parent_si->family, my_addr, &len);
	if (ret == -1) {
		FUNC3(my_addr);
		FUNC1(fd);
		return ret;
	}

	child_si = (struct socket_info *)FUNC4(sizeof(struct socket_info));
	FUNC6(child_si, 0, sizeof(*child_si));

	child_si->fd = fd;
	child_si->family = parent_si->family;
	child_si->type = parent_si->type;
	child_si->protocol = parent_si->protocol;
	child_si->bound = 1;
	child_si->is_server = 1;

	child_si->peername_len = len;
	child_si->peername = FUNC10(my_addr, len);

	if (addr != NULL && addrlen != NULL) {
	    *addrlen = len;
	    if (*addrlen >= len)
		FUNC5(addr, my_addr, len);
	    *addrlen = 0;
	}

	ret = FUNC8(fd, (struct sockaddr *)&un_my_addr, &un_my_addrlen);
	if (ret == -1) {
		FUNC3(child_si);
		FUNC1(fd);
		return ret;
	}

	len = my_addrlen;
	ret = FUNC9(child_si, &un_my_addr, un_my_addrlen,
				       child_si->family, my_addr, &len);
	if (ret == -1) {
		FUNC3(child_si);
		FUNC3(my_addr);
		FUNC1(fd);
		return ret;
	}

	child_si->myname_len = len;
	child_si->myname = FUNC10(my_addr, len);
	FUNC3(my_addr);

	FUNC0(sockets, child_si);

	FUNC12(child_si, addr, SWRAP_ACCEPT_SEND, NULL, 0);
	FUNC12(child_si, addr, SWRAP_ACCEPT_RECV, NULL, 0);
	FUNC12(child_si, addr, SWRAP_ACCEPT_ACK, NULL, 0);

	return fd;
}