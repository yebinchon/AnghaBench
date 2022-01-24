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
struct rrset_ref {int /*<<< orphan*/  id; TYPE_2__* key; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;

/* Variables and functions */
 size_t RR_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct regional*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rrset_cache*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC4(struct rrset_cache* r, struct regional* scratch,
	struct rrset_ref* ref, size_t count)
{
	hashvalue_type* h;
	size_t i;
	if(count > RR_COUNT_MAX || !(h = (hashvalue_type*)FUNC2(
		scratch, sizeof(hashvalue_type)*count))) {
		FUNC1("rrset LRU: memory allocation failed");
		h = NULL;
	} else 	/* store hash values */
		for(i=0; i<count; i++)
			h[i] = ref[i].key->entry.hash;
	/* unlock */
	for(i=0; i<count; i++) {
		if(i>0 && ref[i].key == ref[i-1].key)
			continue; /* only unlock items once */
		FUNC0(&ref[i].key->entry.lock);
	}
	if(h) {
		/* LRU touch, with no rrset locks held */
		for(i=0; i<count; i++) {
			if(i>0 && ref[i].key == ref[i-1].key)
				continue; /* only touch items once */
			FUNC3(r, ref[i].key, h[i], ref[i].id);
		}
	}
}