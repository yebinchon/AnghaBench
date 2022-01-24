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
struct in6_aliasreq {int /*<<< orphan*/  ifra_dstaddr; int /*<<< orphan*/  ifra_addr; int /*<<< orphan*/  ifra_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef  int /*<<< orphan*/  in6_addreq ;
struct TYPE_2__ {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCSIFPHYADDR_IN6 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct in6_aliasreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_aliasreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int s, struct addrinfo *srcres, struct addrinfo *dstres)
{
	struct in6_aliasreq in6_addreq; 

	FUNC2(&in6_addreq, 0, sizeof(in6_addreq));
	FUNC3(in6_addreq.ifra_name, name, sizeof(in6_addreq.ifra_name));
	FUNC1(&in6_addreq.ifra_addr, srcres->ai_addr, srcres->ai_addr->sa_len);
	FUNC1(&in6_addreq.ifra_dstaddr, dstres->ai_addr,
	    dstres->ai_addr->sa_len);

	if (FUNC0(s, SIOCSIFPHYADDR_IN6, &in6_addreq) < 0)
		FUNC4("SIOCSIFPHYADDR_IN6");
}