
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_segment_descriptor {int dummy; } ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_gsbase; } ;
struct linux_set_thread_area_args {int desc; } ;
struct l_user_desc {int entry_number; scalar_t__ base_addr; } ;
typedef scalar_t__ register_t ;
typedef int a ;


 int EINVAL ;


 scalar_t__ LINUX_LDT_empty (struct l_user_desc*) ;
 int LINUX_LDT_entry_a (struct l_user_desc*) ;
 int LINUX_LDT_entry_b (struct l_user_desc*) ;
 int PCB_32BIT ;
 int copyin (int ,struct l_user_desc*,int) ;
 int copyout (struct l_user_desc*,int ,int) ;
 int memcpy (struct user_segment_descriptor*,int**,int) ;
 int set_pcb_flags (struct pcb*,int ) ;
 int update_gdt_gsbase (struct thread*,scalar_t__) ;

int
linux_set_thread_area(struct thread *td,
    struct linux_set_thread_area_args *args)
{
 struct l_user_desc info;
 struct user_segment_descriptor sd;
 struct pcb *pcb;
 int a[2];
 int error;

 error = copyin(args->desc, &info, sizeof(struct l_user_desc));
 if (error)
  return (error);
 switch (info.entry_number) {
 case 128:
 case 129:
 case 6:
 case -1:
  info.entry_number = 128;
  break;
 default:
  return (EINVAL);
 }







 error = copyout(&info, args->desc, sizeof(struct l_user_desc));
 if (error)
  return (error);

 if (LINUX_LDT_empty(&info)) {
  a[0] = 0;
  a[1] = 0;
 } else {
  a[0] = LINUX_LDT_entry_a(&info);
  a[1] = LINUX_LDT_entry_b(&info);
 }

 memcpy(&sd, &a, sizeof(a));
 pcb = td->td_pcb;
 pcb->pcb_gsbase = (register_t)info.base_addr;
 set_pcb_flags(pcb, PCB_32BIT);
 update_gdt_gsbase(td, info.base_addr);

 return (0);
}
