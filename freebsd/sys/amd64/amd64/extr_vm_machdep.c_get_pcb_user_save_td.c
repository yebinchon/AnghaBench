
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int md_stack_base; } ;
struct thread {TYPE_1__ td_md; } ;
struct savefpu {int dummy; } ;


 int KASSERT (int,char*) ;
 int XSAVE_AREA_ALIGN ;

struct savefpu *
get_pcb_user_save_td(struct thread *td)
{
 vm_offset_t p;

 p = td->td_md.md_stack_base;
 KASSERT((p % XSAVE_AREA_ALIGN) == 0,
     ("Unaligned pcb_user_save area ptr %#lx td %p", p, td));
 return ((struct savefpu *)p);
}
