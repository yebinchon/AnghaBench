#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_4__ {TYPE_2__ s; } ;
struct skt {int len; TYPE_1__ sktaddr; } ;
struct get_neigh_handler {int /*<<< orphan*/  oif; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  addr_src ;

/* Variables and functions */
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  PORT_DISCARD ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 int FUNC0 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct skt*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct get_neigh_handler *neigh_handler,
			 struct skt *addr_dst, int *psock_fd)
{
	int err;
	struct skt addr_src;
	int sock_fd;

	FUNC2(addr_dst, 0, sizeof(*addr_dst));
	FUNC2(&addr_src, 0, sizeof(addr_src));
	addr_src.len = sizeof(addr_src.sktaddr);

	err = FUNC3(neigh_handler->src,
				    &addr_src.sktaddr.s,
				    &addr_src.len);
	if (err) {
		errno = EADDRNOTAVAIL;
		return -1;
	}

	addr_dst->len = sizeof(addr_dst->sktaddr);
	err = FUNC3(neigh_handler->dst,
				    &addr_dst->sktaddr.s,
				    &addr_dst->len);
	if (err) {
		errno = EADDRNOTAVAIL;
		return -1;
	}

	err = FUNC4(&addr_dst->sktaddr, PORT_DISCARD,
			    neigh_handler->oif);
	if (err)
		return -1;

	sock_fd = FUNC5(addr_dst->sktaddr.s.sa_family,
			 SOCK_DGRAM | SOCK_CLOEXEC, 0);
	if (sock_fd == -1)
		return -1;
	err = FUNC0(sock_fd, &addr_src.sktaddr.s, addr_src.len);
	if (err) {
		FUNC1(sock_fd);
		return -1;
	}

	*psock_fd = sock_fd;

	return 0;
}