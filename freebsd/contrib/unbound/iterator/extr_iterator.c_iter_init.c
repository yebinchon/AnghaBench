
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int cfg; void** modinfo; } ;
struct iter_env {int num_queries_ratelimited; int queries_ratelimit_lock; } ;


 scalar_t__ calloc (int,int) ;
 int iter_apply_cfg (struct iter_env*,int ) ;
 int lock_basic_init (int *) ;
 int lock_protect (int *,int *,int) ;
 int log_err (char*) ;

int
iter_init(struct module_env* env, int id)
{
 struct iter_env* iter_env = (struct iter_env*)calloc(1,
  sizeof(struct iter_env));
 if(!iter_env) {
  log_err("malloc failure");
  return 0;
 }
 env->modinfo[id] = (void*)iter_env;

 lock_basic_init(&iter_env->queries_ratelimit_lock);
 lock_protect(&iter_env->queries_ratelimit_lock,
   &iter_env->num_queries_ratelimited,
  sizeof(iter_env->num_queries_ratelimited));

 if(!iter_apply_cfg(iter_env, env->cfg)) {
  log_err("iterator: could not apply configuration settings.");
  return 0;
 }

 return 1;
}
