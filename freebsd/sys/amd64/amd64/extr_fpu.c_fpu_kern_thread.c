
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {int td_pflags; } ;
struct TYPE_6__ {scalar_t__ pcb_save; } ;


 int KASSERT (int,char*) ;
 int PCB_KERNFPU ;
 int PCB_USER_FPU (TYPE_1__*) ;
 int TDP_KTHREAD ;
 TYPE_1__* curpcb ;
 TYPE_3__* curthread ;
 scalar_t__ get_pcb_user_save_pcb (TYPE_1__*) ;
 int set_pcb_flags (TYPE_1__*,int ) ;

int
fpu_kern_thread(u_int flags)
{

 KASSERT((curthread->td_pflags & TDP_KTHREAD) != 0,
     ("Only kthread may use fpu_kern_thread"));
 KASSERT(curpcb->pcb_save == get_pcb_user_save_pcb(curpcb),
     ("mangled pcb_save"));
 KASSERT(PCB_USER_FPU(curpcb), ("recursive call"));

 set_pcb_flags(curpcb, PCB_KERNFPU);
 return (0);
}
