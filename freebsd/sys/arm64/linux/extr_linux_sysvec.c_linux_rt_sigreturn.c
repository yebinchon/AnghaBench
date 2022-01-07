
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_rt_sigreturn_args {int dummy; } ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,struct linux_rt_sigreturn_args*),int ) ;
 int sysvec ;
 int todo ;

int
linux_rt_sigreturn(struct thread *td, struct linux_rt_sigreturn_args *args)
{


 LIN_SDT_PROBE0(sysvec, linux_rt_sigreturn, todo);
 return (EDOOFUS);
}
