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
struct TYPE_3__ {struct slabhash* msg_cache; } ;
struct worker {TYPE_1__ env; } ;
struct slabhash {size_t size; TYPE_2__** array; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct worker*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(RES* ssl, struct worker* worker)
{
	struct slabhash* sh = worker->env.msg_cache;
	size_t slab;
	if(!FUNC3(ssl, "START_MSG_CACHE\n")) return 0;
	for(slab=0; slab<sh->size; slab++) {
		FUNC1(&sh->array[slab]->lock);
		if(!FUNC0(ssl, worker, sh->array[slab])) {
			FUNC2(&sh->array[slab]->lock);
			return 0;
		}
		FUNC2(&sh->array[slab]->lock);
	}
	return FUNC3(ssl, "END_MSG_CACHE\n");
}