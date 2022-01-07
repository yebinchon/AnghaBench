
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_stack {int num; TYPE_1__** mod; } ;
struct module_env {scalar_t__ need_to_validate; } ;
struct TYPE_2__ {int name; int (* init ) (struct module_env*,int) ;} ;


 int VERB_OPS ;
 int fptr_ok (int ) ;
 int fptr_whitelist_mod_init (int (*) (struct module_env*,int)) ;
 int log_err (char*,int ) ;
 int modstack_config (struct module_stack*,char const*) ;
 int modstack_desetup (struct module_stack*,struct module_env*) ;
 int stub1 (struct module_env*,int) ;
 int verbose (int ,char*,int,int ) ;

int
modstack_setup(struct module_stack* stack, const char* module_conf,
 struct module_env* env)
{
        int i;
        if(stack->num != 0)
                modstack_desetup(stack, env);

        if(!modstack_config(stack, module_conf)) {
  return 0;
        }
        env->need_to_validate = 0;
        for(i=0; i<stack->num; i++) {
                verbose(VERB_OPS, "init module %d: %s",
                        i, stack->mod[i]->name);
                fptr_ok(fptr_whitelist_mod_init(stack->mod[i]->init));
                if(!(*stack->mod[i]->init)(env, i)) {
                        log_err("module init for module %s failed",
                                stack->mod[i]->name);
   return 0;
                }
        }
 return 1;
}
