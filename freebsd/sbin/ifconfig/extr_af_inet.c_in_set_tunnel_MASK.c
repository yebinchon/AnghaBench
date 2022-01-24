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
struct in_aliasreq {int /*<<< orphan*/  ifra_dstaddr; int /*<<< orphan*/  ifra_addr; int /*<<< orphan*/  ifra_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef  int /*<<< orphan*/  addreq ;
struct TYPE_2__ {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFPHYADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct in_aliasreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_aliasreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int s, struct addrinfo *srcres, struct addrinfo *dstres)
{
	struct in_aliasreq addreq;

	FUNC2(&addreq, 0, sizeof(addreq));
	FUNC3(addreq.ifra_name, name, IFNAMSIZ);
	FUNC1(&addreq.ifra_addr, srcres->ai_addr, srcres->ai_addr->sa_len);
	FUNC1(&addreq.ifra_dstaddr, dstres->ai_addr, dstres->ai_addr->sa_len);

	if (FUNC0(s, SIOCSIFPHYADDR, &addreq) < 0)
		FUNC4("SIOCSIFPHYADDR");
}