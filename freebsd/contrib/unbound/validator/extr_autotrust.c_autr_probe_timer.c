
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct trust_anchor {int dummy; } ;
struct module_env {int scratch; } ;


 int VERB_ALGO ;
 scalar_t__ autr_permit_small_holddown ;
 int probe_anchor (struct module_env*,struct trust_anchor*) ;
 int regional_free_all (int ) ;
 struct trust_anchor* todo_probe (struct module_env*,int*) ;
 int verbose (int ,char*,...) ;

time_t
autr_probe_timer(struct module_env* env)
{
 struct trust_anchor* tp;
 time_t next_probe = 3600;
 int num = 0;
 if(autr_permit_small_holddown) next_probe = 1;
 verbose(VERB_ALGO, "autotrust probe timer callback");

 while( (tp = todo_probe(env, &next_probe)) ) {

  probe_anchor(env, tp);
  num++;
 }
 regional_free_all(env->scratch);
 if(next_probe == 0)
  return 0;
 verbose(VERB_ALGO, "autotrust probe timer %d callbacks done", num);
 return next_probe;
}
