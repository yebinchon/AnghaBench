
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct intr_event {int dummy; } ;
struct TYPE_3__ {int td_pflags; } ;


 TYPE_1__* PCPU_GET (int ) ;
 int PMC_FN_USER_CALLCHAIN ;
 int TDP_CALLCHAIN ;
 int VM_CNT_INC (int ) ;
 int arm_get_next_irq (int) ;
 int arm_mask_irq (int) ;
 int curthread ;
 scalar_t__ intr_event_handle (struct intr_event*,struct trapframe*) ;
 struct intr_event** intr_events ;
 int * intrcnt ;
 int pmc_hook (TYPE_1__*,int ,struct trapframe*) ;
 int v_intr ;

void
intr_irq_handler(struct trapframe *frame)
{
 struct intr_event *event;
 int i;

 VM_CNT_INC(v_intr);
 i = -1;
 while ((i = arm_get_next_irq(i)) != -1) {
  intrcnt[i]++;
  event = intr_events[i];
  if (intr_event_handle(event, frame) != 0) {

   arm_mask_irq(i);
  }
 }




}
