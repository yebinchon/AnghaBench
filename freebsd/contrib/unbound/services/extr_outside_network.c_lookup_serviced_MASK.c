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
struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {struct serviced_query* key; } ;
struct serviced_query {int dnssec; struct edns_option* opt_list; struct outside_network* outnet; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  qbuflen; int /*<<< orphan*/  qbuf; TYPE_1__ node; } ;
struct outside_network {int /*<<< orphan*/  serviced; } ;
struct edns_option {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct serviced_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct serviced_query*
FUNC4(struct outside_network* outnet, sldns_buffer* buff, int dnssec,
	struct sockaddr_storage* addr, socklen_t addrlen,
	struct edns_option* opt_list)
{
	struct serviced_query key;
	key.node.key = &key;
	key.qbuf = FUNC2(buff);
	key.qbuflen = FUNC3(buff);
	key.dnssec = dnssec;
	FUNC0(&key.addr, addr, addrlen);
	key.addrlen = addrlen;
	key.outnet = outnet;
	key.opt_list = opt_list;
	return (struct serviced_query*)FUNC1(outnet->serviced, &key);
}