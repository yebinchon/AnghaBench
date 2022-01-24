#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* now; TYPE_1__* infra_cache; } ;
struct worker {TYPE_2__ env; } ;
struct sockaddr_storage {int dummy; } ;
struct del_info {int expired; int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; scalar_t__ num_keys; scalar_t__ num_msgs; scalar_t__ num_rrsets; scalar_t__ labs; scalar_t__ len; scalar_t__ name; struct worker* worker; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_3__ {int /*<<< orphan*/  hosts; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  infra_del_host ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct del_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(RES* ssl, struct worker* worker, char* arg)
{
	struct sockaddr_storage addr;
	socklen_t len;
	struct del_info inf;
	if(FUNC6(arg, "all") == 0) {
		FUNC3(worker->env.infra_cache->hosts);
		FUNC2(ssl);
		return;
	}
	if(!FUNC0(arg, UNBOUND_DNS_PORT, &addr, &len)) {
		(void)FUNC5(ssl, "error parsing ip addr: '%s'\n", arg);
		return;
	}
	/* delete all entries from cache */
	/* what we do is to set them all expired */
	inf.worker = worker;
	inf.name = 0;
	inf.len = 0;
	inf.labs = 0;
	inf.expired = *worker->env.now;
	inf.expired -= 3; /* handle 3 seconds skew between threads */
	inf.num_rrsets = 0;
	inf.num_msgs = 0;
	inf.num_keys = 0;
	inf.addrlen = len;
	FUNC1(&inf.addr, &addr, len);
	FUNC4(worker->env.infra_cache->hosts, 1, &infra_del_host,
		&inf);
	FUNC2(ssl);
}