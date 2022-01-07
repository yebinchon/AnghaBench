
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int pcb_save; } ;


 scalar_t__ PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_1__* curpcb ;
 scalar_t__ curthread ;
 int fpcurthread ;
 int fpusave (int ) ;
 int start_emulating () ;
 int stop_emulating () ;

void
fpuexit(struct thread *td)
{

 critical_enter();
 if (curthread == PCPU_GET(fpcurthread)) {
  stop_emulating();
  fpusave(curpcb->pcb_save);
  start_emulating();
  PCPU_SET(fpcurthread, ((void*)0));
 }
 critical_exit();
}
