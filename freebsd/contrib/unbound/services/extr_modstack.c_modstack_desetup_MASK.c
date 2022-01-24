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
struct module_env {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (struct module_env*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct module_env*,int)) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,int) ; 

void 
FUNC4(struct module_stack* stack, struct module_env* env)
{
        int i;
        for(i=0; i<stack->num; i++) {
                FUNC0(FUNC1(stack->mod[i]->deinit));
                (*stack->mod[i]->deinit)(env, i);
        }
        stack->num = 0;
        FUNC2(stack->mod);
        stack->mod = NULL;
}