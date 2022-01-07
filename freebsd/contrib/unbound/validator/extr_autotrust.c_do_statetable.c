
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; } ;
struct module_env {int dummy; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 int anchor_state_update (struct module_env*,struct autr_ta*,int*) ;
 int remove_missing_trustanchors (struct module_env*,struct trust_anchor*,int*) ;
 int ta_is_dnskey_sep (struct autr_ta*) ;

__attribute__((used)) static int
do_statetable(struct module_env* env, struct trust_anchor* tp, int* changed)
{
 struct autr_ta* anchor;
 for(anchor = tp->autr->keys; anchor; anchor = anchor->next) {

  if(!ta_is_dnskey_sep(anchor))
   continue;
  anchor_state_update(env, anchor, changed);
 }
 remove_missing_trustanchors(env, tp, changed);
 return 1;
}
