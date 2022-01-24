#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int valdat_len; int /*<<< orphan*/  valdat_val; } ;
typedef  TYPE_3__ valdat ;
typedef  scalar_t__ time_t ;
struct TYPE_8__ {int valdat_len; struct ypmatch_ent* valdat_val; } ;
struct TYPE_7__ {int keydat_len; struct ypmatch_ent* keydat_val; } ;
struct ypmatch_ent {struct ypmatch_ent* ypc_next; TYPE_2__ ypc_val; TYPE_1__ ypc_key; scalar_t__ ypc_expire_t; struct ypmatch_ent* ypc_map; } ;
struct dom_binding {scalar_t__ ypmatch_cachecnt; struct ypmatch_ent* cache; } ;
struct TYPE_10__ {int keydat_len; int /*<<< orphan*/  keydat_val; } ;
typedef  TYPE_4__ keydat ;

/* Variables and functions */
 scalar_t__ YPLIB_EXPIRE ; 
 scalar_t__ YPLIB_MAXCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ypmatch_ent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ypmatch_ent*) ; 
 void* FUNC2 (int) ; 
 struct ypmatch_ent* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dom_binding*) ; 

__attribute__((used)) static void
FUNC6(struct dom_binding *ypdb, char *map, keydat *key,
    valdat *val)
{
	struct ypmatch_ent	*new;

	/* Do an expire run to maybe open up a slot. */
	if (ypdb->ypmatch_cachecnt)
		FUNC5(ypdb);

	/*
	 * If there are no slots free, then force an expire of
	 * the least recently used entry.
 	 */
	if (ypdb->ypmatch_cachecnt >= YPLIB_MAXCACHE) {
		struct ypmatch_ent	*o = NULL, *c = ypdb->cache;
		time_t			oldest = 0;

		oldest = ~oldest;

		while (c != NULL) {
			if (c->ypc_expire_t < oldest) {
				oldest = c->ypc_expire_t;
				o = c;
			}
			c = c->ypc_next;
		}

		if (o == NULL)
			return;
		o->ypc_expire_t = 0;
		FUNC5(ypdb);
	}

	new = FUNC2(sizeof(struct ypmatch_ent));
	if (new == NULL)
		return;

	new->ypc_map = FUNC3(map);
	if (new->ypc_map == NULL) {
		FUNC1(new);
		return;
	}
	new->ypc_key.keydat_val = FUNC2(key->keydat_len);
	if (new->ypc_key.keydat_val == NULL) {
		FUNC1(new->ypc_map);
		FUNC1(new);
		return;
	}
	new->ypc_val.valdat_val = FUNC2(val->valdat_len);
	if (new->ypc_val.valdat_val == NULL) {
		FUNC1(new->ypc_val.valdat_val);
		FUNC1(new->ypc_map);
		FUNC1(new);
		return;
	}

	new->ypc_expire_t = FUNC4(NULL) + YPLIB_EXPIRE;
	new->ypc_key.keydat_len = key->keydat_len;
	new->ypc_val.valdat_len = val->valdat_len;
	FUNC0(key->keydat_val, new->ypc_key.keydat_val, key->keydat_len);
	FUNC0(val->valdat_val, new->ypc_val.valdat_val, val->valdat_len);

	new->ypc_next = ypdb->cache;
	ypdb->cache = new;

	ypdb->ypmatch_cachecnt++;

	return;
}