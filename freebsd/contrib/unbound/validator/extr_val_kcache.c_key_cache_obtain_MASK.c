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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct key_entry_key {TYPE_1__ entry; } ;
struct key_entry_data {scalar_t__ ttl; } ;
struct key_cache {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,size_t*) ; 
 struct key_entry_key* FUNC2 (struct key_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key_entry_key* FUNC3 (struct key_entry_key*,struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct key_entry_key* 
FUNC5(struct key_cache* kcache, uint8_t* name, size_t namelen, 
	uint16_t key_class, struct regional* region, time_t now)
{
	/* keep looking until we find a nonexpired entry */
	while(1) {
		struct key_entry_key* k = FUNC2(kcache, name, 
			namelen, key_class, 0);
		if(k) {
			/* see if TTL is OK */
			struct key_entry_data* d = (struct key_entry_data*)
				k->entry.data;
			if(now <= d->ttl) {
				/* copy and return it */
				struct key_entry_key* retkey =
					FUNC3(k, region);
				FUNC4(&k->entry.lock);
				return retkey;
			}
			FUNC4(&k->entry.lock);
		}
		/* snip off first label to continue */
		if(FUNC0(name))
			break;
		FUNC1(&name, &namelen);
	}
	return NULL;
}