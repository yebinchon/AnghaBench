
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module_env {TYPE_1__* cfg; } ;
struct auth_xfer {TYPE_2__* task_transfer; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int lookup_aaaa; TYPE_3__* lookup_target; } ;
struct TYPE_4__ {int do_ip4; scalar_t__ do_ip6; } ;



__attribute__((used)) static void
xfr_transfer_move_to_next_lookup(struct auth_xfer* xfr, struct module_env* env)
{
 if(!xfr->task_transfer->lookup_target)
  return;
 if(!xfr->task_transfer->lookup_aaaa && env->cfg->do_ip6) {

  xfr->task_transfer->lookup_aaaa = 1;
  return;
 }
 xfr->task_transfer->lookup_target =
  xfr->task_transfer->lookup_target->next;
 xfr->task_transfer->lookup_aaaa = 0;
 if(!env->cfg->do_ip4 && xfr->task_transfer->lookup_target!=((void*)0))
  xfr->task_transfer->lookup_aaaa = 1;
}
