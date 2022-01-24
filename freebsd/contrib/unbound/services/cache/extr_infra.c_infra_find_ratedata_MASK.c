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
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct rate_key {size_t namelen; TYPE_1__ entry; int /*<<< orphan*/ * name; } ;
struct lruhash_entry {int dummy; } ;
struct infra_cache {int /*<<< orphan*/  domain_rates; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rate_key*,int /*<<< orphan*/ ,int) ; 
 struct lruhash_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rate_key*,int) ; 

__attribute__((used)) static struct lruhash_entry* FUNC3(struct infra_cache* infra,
	uint8_t* name, size_t namelen, int wr)
{
	struct rate_key key;
	hashvalue_type h = FUNC0(name, 0xab);
	FUNC1(&key, 0, sizeof(key));
	key.name = name;
	key.namelen = namelen;
	key.entry.hash = h;
	return FUNC2(infra->domain_rates, h, &key, wr);
}