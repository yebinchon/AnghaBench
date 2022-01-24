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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {struct ip_rate_key* data; struct ip_rate_key* key; int /*<<< orphan*/  hash; int /*<<< orphan*/  lock; } ;
struct ip_rate_key {int* qps; TYPE_1__ entry; int /*<<< orphan*/ * timestamp; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct ip_rate_data {int* qps; TYPE_1__ entry; int /*<<< orphan*/ * timestamp; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct infra_cache {int /*<<< orphan*/  client_ip_rates; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_rate_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct ip_rate_key*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct infra_cache* infra,
	struct comm_reply* repinfo, time_t timenow)
{
	hashvalue_type h = FUNC2(&(repinfo->addr),
	repinfo->addrlen, 0);
	struct ip_rate_key* k = (struct ip_rate_key*)FUNC0(1, sizeof(*k));
	struct ip_rate_data* d = (struct ip_rate_data*)FUNC0(1, sizeof(*d));
	if(!k || !d) {
		FUNC1(k);
		FUNC1(d);
		return; /* alloc failure */
	}
	k->addr = repinfo->addr;
	k->addrlen = repinfo->addrlen;
	FUNC3(&k->entry.lock);
	k->entry.hash = h;
	k->entry.key = k;
	k->entry.data = d;
	d->qps[0] = 1;
	d->timestamp[0] = timenow;
	FUNC4(infra->client_ip_rates, h, &k->entry, d, NULL);
}