
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int dummy; } ;
struct autr_ta {int s; int fetched; int revoked; int last_change; } ;
 int VERB_ALGO ;
 int do_addtime (struct module_env*,struct autr_ta*,int*) ;
 int do_keypres (struct module_env*,struct autr_ta*,int*) ;
 int do_keyrem (struct module_env*,struct autr_ta*,int*) ;
 int do_newkey (struct module_env*,struct autr_ta*,int*) ;
 int do_remtime (struct module_env*,struct autr_ta*,int*) ;
 int do_revoked (struct module_env*,struct autr_ta*,int*) ;
 int log_assert (struct autr_ta*) ;
 int reset_holddown (struct module_env*,struct autr_ta*,int*) ;
 int verbose_key (struct autr_ta*,int ,char*) ;

__attribute__((used)) static void
anchor_state_update(struct module_env* env, struct autr_ta* anchor, int* c)
{
 log_assert(anchor);
 switch(anchor->s) {

 case 129:

  if (anchor->fetched)
   do_newkey(env, anchor, c);
  break;

 case 133:

  if (!anchor->fetched)
   do_keyrem(env, anchor, c);

  else do_addtime(env, anchor, c);
  break;

 case 128:

  if (anchor->revoked)
   do_revoked(env, anchor, c);

  else if (!anchor->fetched)
   do_keyrem(env, anchor, c);
  else if(!anchor->last_change) {
   verbose_key(anchor, VERB_ALGO, "first seen");
   reset_holddown(env, anchor, c);
  }
  break;

 case 132:

  if (anchor->revoked)
   do_revoked(env, anchor, c);

  else if (anchor->fetched)
   do_keypres(env, anchor, c);
  break;

 case 130:
  if (anchor->fetched)
   reset_holddown(env, anchor, c);

  else do_remtime(env, anchor, c);
  break;

 case 131:
 default:
  break;
 }
}
