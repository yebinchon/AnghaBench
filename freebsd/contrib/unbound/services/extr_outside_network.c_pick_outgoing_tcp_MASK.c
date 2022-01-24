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
struct waiting_tcp {TYPE_1__* outnet; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
struct port_if {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int num_ip6; int num_ip4; int /*<<< orphan*/  rnd; struct port_if* ip4_ifs; struct port_if* ip6_ifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct port_if*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct waiting_tcp* w, int s)
{
	struct port_if* pi = NULL;
	int num;
#ifdef INET6
	if(addr_is_ip6(&w->addr, w->addrlen))
		num = w->outnet->num_ip6;
	else
#endif
		num = w->outnet->num_ip4;
	if(num == 0) {
		FUNC8("no TCP outgoing interfaces of family");
		FUNC6(VERB_OPS, "for addr", &w->addr, w->addrlen);
#ifndef USE_WINSOCK
		FUNC4(s);
#else
		closesocket(s);
#endif
		return 0;
	}
#ifdef INET6
	if(addr_is_ip6(&w->addr, w->addrlen))
		pi = &w->outnet->ip6_ifs[ub_random_max(w->outnet->rnd, num)];
	else
#endif
		pi = &w->outnet->ip4_ifs[FUNC10(w->outnet->rnd, num)];
	FUNC7(pi);
	if(FUNC1(&pi->addr, pi->addrlen)) {
		/* binding to the ANY interface is for listening sockets */
		return 1;
	}
	/* set port to 0 */
	if(FUNC2(&pi->addr, pi->addrlen))
		((struct sockaddr_in6*)&pi->addr)->sin6_port = 0;
	else	((struct sockaddr_in*)&pi->addr)->sin_port = 0;
	if(FUNC3(s, (struct sockaddr*)&pi->addr, pi->addrlen) != 0) {
#ifndef USE_WINSOCK
		FUNC8("outgoing tcp: bind: %s", FUNC9(errno));
		FUNC4(s);
#else
		log_err("outgoing tcp: bind: %s", 
			wsa_strerror(WSAGetLastError()));
		closesocket(s);
#endif
		return 0;
	}
	FUNC6(VERB_ALGO, "tcp bound to src", &pi->addr, pi->addrlen);
	return 1;
}