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
struct module_stack {int num; TYPE_1__** mod; } ;
struct module_env {scalar_t__ need_to_validate; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  (* init ) (struct module_env*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct module_env*,int)) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct module_stack*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_stack*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC5 (struct module_env*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

int 
FUNC7(struct module_stack* stack, const char* module_conf,
	struct module_env* env)
{
        int i;
        if(stack->num != 0)
                FUNC4(stack, env);
        /* fixed setup of the modules */
        if(!FUNC3(stack, module_conf)) {
		return 0;
        }
        env->need_to_validate = 0; /* set by module init below */
        for(i=0; i<stack->num; i++) {
                FUNC6(VERB_OPS, "init module %d: %s",
                        i, stack->mod[i]->name);
                FUNC0(FUNC1(stack->mod[i]->init));
                if(!(*stack->mod[i]->init)(env, i)) {
                        FUNC2("module init for module %s failed",
                                stack->mod[i]->name);
			return 0;
                }
        }
	return 1;
}