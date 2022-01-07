
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int num_rrset_bogus; int bogus_lock; } ;
struct module_env {int need_to_validate; int cfg; void** modinfo; } ;


 scalar_t__ calloc (int,int) ;
 int ecdsa_evp_workaround_init () ;
 int lock_basic_init (int *) ;
 int lock_protect (int *,int *,int) ;
 int log_err (char*) ;
 int val_apply_cfg (struct module_env*,struct val_env*,int ) ;

int
val_init(struct module_env* env, int id)
{
 struct val_env* val_env = (struct val_env*)calloc(1,
  sizeof(struct val_env));
 if(!val_env) {
  log_err("malloc failure");
  return 0;
 }
 env->modinfo[id] = (void*)val_env;
 env->need_to_validate = 1;
 lock_basic_init(&val_env->bogus_lock);
 lock_protect(&val_env->bogus_lock, &val_env->num_rrset_bogus,
  sizeof(val_env->num_rrset_bogus));



 if(!val_apply_cfg(env, val_env, env->cfg)) {
  log_err("validator: could not apply configuration settings.");
  return 0;
 }

 return 1;
}
