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
struct port_if {int avail_total; int* avail_ports; int maxout; struct port_comm** out; scalar_t__ inuse; int /*<<< orphan*/  pfxlen; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct port_comm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct port_if* pif, const char* addrstr, 
	int* avail, int numavail, size_t numfd)
{
	pif->avail_total = numavail;
	pif->avail_ports = (int*)FUNC2(avail, (size_t)numavail*sizeof(int));
	if(!pif->avail_ports)
		return 0;
	if(!FUNC1(addrstr, UNBOUND_DNS_PORT, &pif->addr, &pif->addrlen) &&
	   !FUNC3(addrstr, UNBOUND_DNS_PORT,
			      &pif->addr, &pif->addrlen, &pif->pfxlen))
		return 0;
	pif->maxout = (int)numfd;
	pif->inuse = 0;
	pif->out = (struct port_comm**)FUNC0(numfd, 
		sizeof(struct port_comm*));
	if(!pif->out)
		return 0;
	return 1;
}