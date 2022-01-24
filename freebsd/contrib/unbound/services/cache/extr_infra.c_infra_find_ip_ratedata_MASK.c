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
struct lruhash_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct ip_rate_key {TYPE_1__ entry; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct infra_cache {int /*<<< orphan*/  client_ip_rates; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_rate_key*,int /*<<< orphan*/ ,int) ; 
 struct lruhash_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_rate_key*,int) ; 

__attribute__((used)) static struct lruhash_entry* FUNC3(struct infra_cache* infra,
	struct comm_reply* repinfo, int wr)
{
	struct ip_rate_key key;
	hashvalue_type h = FUNC0(&(repinfo->addr),
		repinfo->addrlen, 0);
	FUNC1(&key, 0, sizeof(key));
	key.addr = repinfo->addr;
	key.addrlen = repinfo->addrlen;
	key.entry.hash = h;
	return FUNC2(infra->client_ip_rates, h, &key, wr);
}