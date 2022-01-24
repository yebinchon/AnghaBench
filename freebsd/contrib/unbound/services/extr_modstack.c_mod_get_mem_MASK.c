#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module_env {TYPE_1__* mesh; } ;
struct TYPE_6__ {TYPE_2__** mod; } ;
struct TYPE_5__ {size_t (* get_mem ) (struct module_env*,int) ;} ;
struct TYPE_4__ {TYPE_3__ mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t (*) (struct module_env*,int)) ; 
 int FUNC2 (TYPE_3__*,char const*) ; 
 size_t FUNC3 (struct module_env*,int) ; 

size_t
FUNC4(struct module_env* env, const char* name)
{
	int m = FUNC2(&env->mesh->mods, name);
	if(m != -1) {
		FUNC0(FUNC1(env->mesh->
			mods.mod[m]->get_mem));
		return (*env->mesh->mods.mod[m]->get_mem)(env, m);
	}
	return 0;
}