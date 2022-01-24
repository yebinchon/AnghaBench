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
struct ratelimit_list_arg {scalar_t__ all; int /*<<< orphan*/  ssl; int /*<<< orphan*/  now; int /*<<< orphan*/  infra; } ;
struct rate_key {int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; } ;
struct rate_data {int dummy; } ;
struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rate_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct lruhash_entry* e, void* arg)
{
	struct ratelimit_list_arg* a = (struct ratelimit_list_arg*)arg;
	struct rate_key* k = (struct rate_key*)e->key;
	struct rate_data* d = (struct rate_data*)e->data;
	char buf[257];
	int lim = FUNC1(a->infra, k->name, k->namelen);
	int max = FUNC2(d, a->now);
	if(a->all == 0) {
		if(max < lim)
			return;
	}
	FUNC0(k->name, buf);
	FUNC3(a->ssl, "%s %d limit %d\n", buf, max, lim);
}