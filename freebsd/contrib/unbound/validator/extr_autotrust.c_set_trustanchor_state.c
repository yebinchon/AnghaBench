
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int dummy; } ;
struct autr_ta {int s; } ;
typedef int autr_state_type ;


 int VERB_ALGO ;
 int reset_holddown (struct module_env*,struct autr_ta*,int*) ;
 int trustanchor_state2str (int ) ;
 int verbose_key (struct autr_ta*,int ,char*,int ,int ) ;

__attribute__((used)) static void
set_trustanchor_state(struct module_env* env, struct autr_ta* ta, int* changed,
 autr_state_type s)
{
 verbose_key(ta, VERB_ALGO, "update: %s to %s",
  trustanchor_state2str(ta->s), trustanchor_state2str(s));
 ta->s = s;
 reset_holddown(env, ta, changed);
}
