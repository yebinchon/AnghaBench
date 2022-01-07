
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_segment_descriptor {int dummy; } ;
struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_gsbase; } ;
struct l_user_desc {scalar_t__ base_addr; int entry_number; } ;
typedef scalar_t__ register_t ;
typedef int a ;
struct TYPE_2__ {int tf_gs; } ;


 int GSEL (int ,int ) ;
 int GUGS32_SEL ;
 int LINUX_LDT_entry_a (struct l_user_desc*) ;
 int LINUX_LDT_entry_b (struct l_user_desc*) ;
 int PCB_32BIT ;
 int SEL_UPL ;
 int copyin (void*,struct l_user_desc*,int) ;
 int copyout (struct l_user_desc*,void*,int) ;
 int linux_msg (struct thread*,char*) ;
 int memcpy (struct user_segment_descriptor*,int**,int) ;
 int set_pcb_flags (struct pcb*,int ) ;

int
linux_set_cloned_tls(struct thread *td, void *desc)
{
 struct user_segment_descriptor sd;
 struct l_user_desc info;
 struct pcb *pcb;
 int error;
 int a[2];

 error = copyin(desc, &info, sizeof(struct l_user_desc));
 if (error) {
  linux_msg(td, "set_cloned_tls copyin info failed!");
 } else {


  info.entry_number = GUGS32_SEL;
  error = copyout(&info, desc, sizeof(struct l_user_desc));
  if (error)
   linux_msg(td, "set_cloned_tls copyout info failed!");

  a[0] = LINUX_LDT_entry_a(&info);
  a[1] = LINUX_LDT_entry_b(&info);

  memcpy(&sd, &a, sizeof(a));
  pcb = td->td_pcb;
  pcb->pcb_gsbase = (register_t)info.base_addr;
  td->td_frame->tf_gs = GSEL(GUGS32_SEL, SEL_UPL);
  set_pcb_flags(pcb, PCB_32BIT);
 }

 return (error);
}
