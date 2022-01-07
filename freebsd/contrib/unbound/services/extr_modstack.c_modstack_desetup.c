
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_stack {int num; TYPE_1__** mod; } ;
struct module_env {int dummy; } ;
struct TYPE_2__ {int (* deinit ) (struct module_env*,int) ;} ;


 int fptr_ok (int ) ;
 int fptr_whitelist_mod_deinit (int (*) (struct module_env*,int)) ;
 int free (TYPE_1__**) ;
 int stub1 (struct module_env*,int) ;

void
modstack_desetup(struct module_stack* stack, struct module_env* env)
{
        int i;
        for(i=0; i<stack->num; i++) {
                fptr_ok(fptr_whitelist_mod_deinit(stack->mod[i]->deinit));
                (*stack->mod[i]->deinit)(env, i);
        }
        stack->num = 0;
        free(stack->mod);
        stack->mod = ((void*)0);
}
