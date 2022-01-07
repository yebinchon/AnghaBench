
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int thread_bp_death_addr; int thread_bp_create_addr; } ;
typedef TYPE_2__ td_thragent_t ;
struct TYPE_6__ {int bptaddr; } ;
struct TYPE_8__ {TYPE_1__ u; void* type; } ;
typedef TYPE_3__ td_notify_t ;
typedef int td_event_e ;
typedef int td_err_e ;


 void* NOTIFY_BPT ;
 int TDBG_FUNC () ;


 int TD_ERR ;

__attribute__((used)) static td_err_e
pt_ta_event_addr(const td_thragent_t *ta, td_event_e event, td_notify_t *ptr)
{

 TDBG_FUNC();

 switch (event) {
 case 129:
  ptr->type = NOTIFY_BPT;
  ptr->u.bptaddr = ta->thread_bp_create_addr;
  return (0);
 case 128:
  ptr->type = NOTIFY_BPT;
  ptr->u.bptaddr = ta->thread_bp_death_addr;
  return (0);
 default:
  return (TD_ERR);
 }
}
