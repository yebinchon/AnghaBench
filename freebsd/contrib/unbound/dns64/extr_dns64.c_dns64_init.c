
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int cfg; void** modinfo; } ;
struct dns64_env {int ignore_aaaa; } ;


 scalar_t__ calloc (int,int) ;
 int dns64_apply_cfg (struct dns64_env*,int ) ;
 int log_err (char*) ;
 int name_tree_init (int *) ;

int
dns64_init(struct module_env* env, int id)
{
    struct dns64_env* dns64_env =
        (struct dns64_env*)calloc(1, sizeof(struct dns64_env));
    if (!dns64_env) {
        log_err("malloc failure");
        return 0;
    }
    env->modinfo[id] = (void*)dns64_env;
    name_tree_init(&dns64_env->ignore_aaaa);
    if (!dns64_apply_cfg(dns64_env, env->cfg)) {
        log_err("dns64: could not apply configuration settings.");
        return 0;
    }
    return 1;
}
