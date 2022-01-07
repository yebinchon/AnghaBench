
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int dummy; } ;
struct autr_ta {scalar_t__ s; } ;


 scalar_t__ AUTR_STATE_MISSING ;
 int AUTR_STATE_VALID ;
 int set_trustanchor_state (struct module_env*,struct autr_ta*,int*,int ) ;

__attribute__((used)) static void
do_keypres(struct module_env* env, struct autr_ta* anchor, int* c)
{
 if(anchor->s == AUTR_STATE_MISSING)
  set_trustanchor_state(env, anchor, c, AUTR_STATE_VALID);
}
