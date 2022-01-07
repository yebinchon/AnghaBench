
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int register_t ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,int ),int ) ;
 int machdep ;
 int todo ;

int
linux_set_upcall_kse(struct thread *td, register_t stack)
{

 LIN_SDT_PROBE0(machdep, linux_set_upcall_kse, todo);
 return (EDOOFUS);
}
