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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {struct rate_key* data; struct rate_key* key; int /*<<< orphan*/  hash; int /*<<< orphan*/  lock; } ;
struct rate_key {size_t namelen; int* qps; TYPE_1__ entry; int /*<<< orphan*/ * timestamp; int /*<<< orphan*/  name; } ;
struct rate_data {size_t namelen; int* qps; TYPE_1__ entry; int /*<<< orphan*/ * timestamp; int /*<<< orphan*/  name; } ;
struct infra_cache {int /*<<< orphan*/  domain_rates; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rate_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct rate_key*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct infra_cache* infra,
	uint8_t* name, size_t namelen, time_t timenow)
{
	hashvalue_type h = FUNC1(name, 0xab);
	struct rate_key* k = (struct rate_key*)FUNC0(1, sizeof(*k));
	struct rate_data* d = (struct rate_data*)FUNC0(1, sizeof(*d));
	if(!k || !d) {
		FUNC2(k);
		FUNC2(d);
		return; /* alloc failure */
	}
	k->namelen = namelen;
	k->name = FUNC4(name, namelen);
	if(!k->name) {
		FUNC2(k);
		FUNC2(d);
		return; /* alloc failure */
	}
	FUNC3(&k->entry.lock);
	k->entry.hash = h;
	k->entry.key = k;
	k->entry.data = d;
	d->qps[0] = 1;
	d->timestamp[0] = timenow;
	FUNC5(infra->domain_rates, h, &k->entry, d, NULL);
}