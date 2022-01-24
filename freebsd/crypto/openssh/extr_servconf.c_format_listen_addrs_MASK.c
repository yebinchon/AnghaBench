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
struct listenaddr {char* rdomain; struct addrinfo* addrs; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(struct listenaddr *la)
{
	int r;
	struct addrinfo *ai;
	char addr[NI_MAXHOST], port[NI_MAXSERV];
	char *laddr1 = FUNC5(""), *laddr2 = NULL;

	/*
	 * ListenAddress must be after Port.  add_one_listen_addr pushes
	 * addresses onto a stack, so to maintain ordering we need to
	 * print these in reverse order.
	 */
	for (ai = la->addrs; ai; ai = ai->ai_next) {
		if ((r = FUNC2(ai->ai_addr, ai->ai_addrlen, addr,
		    sizeof(addr), port, sizeof(port),
		    NI_NUMERICHOST|NI_NUMERICSERV)) != 0) {
			FUNC0("getnameinfo: %.100s", FUNC3(r));
			continue;
		}
		laddr2 = laddr1;
		if (ai->ai_family == AF_INET6) {
			FUNC4(&laddr1, "listenaddress [%s]:%s%s%s\n%s",
			    addr, port,
			    la->rdomain == NULL ? "" : " rdomain ",
			    la->rdomain == NULL ? "" : la->rdomain,
			    laddr2);
		} else {
			FUNC4(&laddr1, "listenaddress %s:%s%s%s\n%s",
			    addr, port,
			    la->rdomain == NULL ? "" : " rdomain ",
			    la->rdomain == NULL ? "" : la->rdomain,
			    laddr2);
		}
		FUNC1(laddr2);
	}
	return laddr1;
}