
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int dummy; } ;
struct autr_ta {scalar_t__ s; scalar_t__ pending_count; } ;


 scalar_t__ AUTR_STATE_ADDPEND ;
 int AUTR_STATE_MISSING ;
 int AUTR_STATE_START ;
 scalar_t__ AUTR_STATE_VALID ;
 int set_trustanchor_state (struct module_env*,struct autr_ta*,int*,int ) ;

__attribute__((used)) static void
do_keyrem(struct module_env* env, struct autr_ta* anchor, int* c)
{
 if(anchor->s == AUTR_STATE_ADDPEND) {
  set_trustanchor_state(env, anchor, c, AUTR_STATE_START);
  anchor->pending_count = 0;
 } else if(anchor->s == AUTR_STATE_VALID)
  set_trustanchor_state(env, anchor, c, AUTR_STATE_MISSING);
}
