
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {struct val_env* nsec3_maxiter; struct val_env* nsec3_keysize; int neg_cache; int kcache; int bogus_lock; } ;
struct module_env {int ** modinfo; int * anchors; } ;


 int anchors_delete (int *) ;
 int free (struct val_env*) ;
 int key_cache_delete (int ) ;
 int lock_basic_destroy (int *) ;
 int neg_cache_delete (int ) ;

void
val_deinit(struct module_env* env, int id)
{
 struct val_env* val_env;
 if(!env || !env->modinfo[id])
  return;
 val_env = (struct val_env*)env->modinfo[id];
 lock_basic_destroy(&val_env->bogus_lock);
 anchors_delete(env->anchors);
 env->anchors = ((void*)0);
 key_cache_delete(val_env->kcache);
 neg_cache_delete(val_env->neg_cache);
 free(val_env->nsec3_keysize);
 free(val_env->nsec3_maxiter);
 free(val_env);
 env->modinfo[id] = ((void*)0);
}
