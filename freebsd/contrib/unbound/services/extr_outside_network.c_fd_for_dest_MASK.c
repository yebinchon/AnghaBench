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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  to ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct port_if {scalar_t__ avail_total; int inuse; int* avail_ports; TYPE_1__** out; int /*<<< orphan*/  addrlen; struct sockaddr_storage addr; } ;
struct outside_network {scalar_t__ num_ip6; scalar_t__ num_ip4; int /*<<< orphan*/  rnd; struct port_if* ip4_ifs; struct port_if* ip6_ifs; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  void* in_port_t ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC7(struct outside_network* outnet, struct sockaddr_storage* to_addr,
	socklen_t to_addrlen)
{
	struct sockaddr_storage* addr;
	socklen_t addrlen;
	int i, try, pnum;
	struct port_if* pif;

	/* create fd */
	for(try = 0; try<1000; try++) {
		int port = 0;
		int freebind = 0;
		int noproto = 0;
		int inuse = 0;
		int fd = -1;

		/* select interface */
		if(FUNC0(to_addr, to_addrlen)) {
			if(outnet->num_ip6 == 0) {
				char to[64];
				FUNC1(to_addr, to_addrlen, to, sizeof(to));
				FUNC6(VERB_QUERY, "need ipv6 to send, but no ipv6 outgoing interfaces, for %s", to);
				return -1;
			}
			i = FUNC5(outnet->rnd, outnet->num_ip6);
			pif = &outnet->ip6_ifs[i];
		} else {
			if(outnet->num_ip4 == 0) {
				char to[64];
				FUNC1(to_addr, to_addrlen, to, sizeof(to));
				FUNC6(VERB_QUERY, "need ipv4 to send, but no ipv4 outgoing interfaces, for %s", to);
				return -1;
			}
			i = FUNC5(outnet->rnd, outnet->num_ip4);
			pif = &outnet->ip4_ifs[i];
		}
		addr = &pif->addr;
		addrlen = pif->addrlen;
		pnum = FUNC5(outnet->rnd, pif->avail_total);
		if(pnum < pif->inuse) {
			/* port already open */
			port = pif->out[pnum]->number;
		} else {
			/* unused ports in start part of array */
			port = pif->avail_ports[pnum - pif->inuse];
		}

		if(FUNC0(to_addr, to_addrlen)) {
			struct sockaddr_in6 sa = *(struct sockaddr_in6*)addr;
			sa.sin6_port = (in_port_t)FUNC3((uint16_t)port);
			fd = FUNC2(AF_INET6, SOCK_DGRAM,
				(struct sockaddr*)&sa, addrlen, 1, &inuse, &noproto,
				0, 0, 0, NULL, 0, freebind, 0);
		} else {
			struct sockaddr_in* sa = (struct sockaddr_in*)addr;
			sa->sin_port = (in_port_t)FUNC3((uint16_t)port);
			fd = FUNC2(AF_INET, SOCK_DGRAM, 
				(struct sockaddr*)addr, addrlen, 1, &inuse, &noproto,
				0, 0, 0, NULL, 0, freebind, 0);
		}
		if(fd != -1) {
			return fd;
		}
		if(!inuse) {
			return -1;
		}
	}
	/* too many tries */
	FUNC4("cannot send probe, ports are in use");
	return -1;
}