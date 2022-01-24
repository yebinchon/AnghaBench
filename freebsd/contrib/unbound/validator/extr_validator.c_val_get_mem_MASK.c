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
struct val_env {int nsec3_keyiter_count; int /*<<< orphan*/  neg_cache; int /*<<< orphan*/  kcache; } ;
struct module_env {scalar_t__* modinfo; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

size_t 
FUNC2(struct module_env* env, int id)
{
	struct val_env* ve = (struct val_env*)env->modinfo[id];
	if(!ve)
		return 0;
	return sizeof(*ve) + FUNC0(ve->kcache) + 
		FUNC1(ve->neg_cache) +
		sizeof(size_t)*2*ve->nsec3_keyiter_count;
}