
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_sigaltstack_args {int dummy; } ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,struct linux_sigaltstack_args*),int ) ;
 int machdep ;
 int todo ;

int
linux_sigaltstack(struct thread *td, struct linux_sigaltstack_args *uap)
{

 LIN_SDT_PROBE0(machdep, linux_sigaltstack, todo);
 return (EDOOFUS);
}
