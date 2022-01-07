
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int ** modinfo; } ;
struct iter_env {struct iter_env* caps_white; int donotq; int priv; struct iter_env* target_fetch_policy; int queries_ratelimit_lock; } ;


 int caps_free ;
 int donotq_delete (int ) ;
 int free (struct iter_env*) ;
 int lock_basic_destroy (int *) ;
 int priv_delete (int ) ;
 int traverse_postorder (struct iter_env*,int ,int *) ;

void
iter_deinit(struct module_env* env, int id)
{
 struct iter_env* iter_env;
 if(!env || !env->modinfo[id])
  return;
 iter_env = (struct iter_env*)env->modinfo[id];
 lock_basic_destroy(&iter_env->queries_ratelimit_lock);
 free(iter_env->target_fetch_policy);
 priv_delete(iter_env->priv);
 donotq_delete(iter_env->donotq);
 if(iter_env->caps_white) {
  traverse_postorder(iter_env->caps_white, caps_free, ((void*)0));
  free(iter_env->caps_white);
 }
 free(iter_env);
 env->modinfo[id] = ((void*)0);
}
