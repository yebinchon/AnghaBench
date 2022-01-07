
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_5__ {int fpscr; } ;
struct pcb {int pcb_vfpcpu; TYPE_1__ pcb_vfpstate; scalar_t__ pcb_flags; } ;
struct TYPE_7__ {struct pcb* pc_curpcb; } ;
struct TYPE_6__ {int td_kstack_pages; struct pcb* td_pcb; int * td_frame; scalar_t__ td_kstack; } ;


 int PAGE_SIZE ;
 int VFPSCR_DN ;
 int kstack_pages ;
 TYPE_4__* pcpup ;
 int proc0 ;
 int proc0_tf ;
 int proc_linkup0 (int *,TYPE_2__*) ;
 TYPE_2__ thread0 ;

void
init_proc0(vm_offset_t kstack)
{
 proc_linkup0(&proc0, &thread0);
 thread0.td_kstack = kstack;
 thread0.td_kstack_pages = kstack_pages;
 thread0.td_pcb = (struct pcb *)(thread0.td_kstack +
     thread0.td_kstack_pages * PAGE_SIZE) - 1;
 thread0.td_pcb->pcb_flags = 0;
 thread0.td_pcb->pcb_vfpcpu = -1;
 thread0.td_pcb->pcb_vfpstate.fpscr = VFPSCR_DN;
 thread0.td_frame = &proc0_tf;
 pcpup->pc_curpcb = thread0.td_pcb;
}
