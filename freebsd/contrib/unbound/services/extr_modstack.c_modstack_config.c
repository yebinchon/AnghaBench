
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_stack {int num; struct module_func_block** mod; } ;
struct module_func_block {int dummy; } ;
typedef int md ;


 int MAX_MODULE ;
 int VERB_QUERY ;
 scalar_t__ calloc (size_t,int) ;
 int count_modules (char const*) ;
 int log_err (char*,...) ;
 struct module_func_block* module_factory (char const**) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__* strchr (char*,char) ;
 int verbose (int ,char*,char const*) ;

int
modstack_config(struct module_stack* stack, const char* module_conf)
{
        int i;
        verbose(VERB_QUERY, "module config: \"%s\"", module_conf);
        stack->num = count_modules(module_conf);
        if(stack->num == 0) {
                log_err("error: no modules specified");
                return 0;
        }
        if(stack->num > MAX_MODULE) {
                log_err("error: too many modules (%d max %d)",
                        stack->num, MAX_MODULE);
                return 0;
        }
        stack->mod = (struct module_func_block**)calloc((size_t)
                stack->num, sizeof(struct module_func_block*));
        if(!stack->mod) {
                log_err("out of memory");
                return 0;
        }
        for(i=0; i<stack->num; i++) {
                stack->mod[i] = module_factory(&module_conf);
                if(!stack->mod[i]) {
   char md[256];
   snprintf(md, sizeof(md), "%s", module_conf);
   if(strchr(md, ' ')) *(strchr(md, ' ')) = 0;
   if(strchr(md, '\t')) *(strchr(md, '\t')) = 0;
                        log_err("Unknown value in module-config, module: '%s'."
    " This module is not present (not compiled in),"
    " See the list of linked modules with unbound -h",
                                md);
                        return 0;
                }
        }
        return 1;
}
