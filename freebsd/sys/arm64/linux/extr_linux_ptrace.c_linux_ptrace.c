
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ptrace_args {int dummy; } ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,struct linux_ptrace_args*),int ) ;
 int ptrace ;
 int todo ;

int
linux_ptrace(struct thread *td, struct linux_ptrace_args *uap)
{


 LIN_SDT_PROBE0(ptrace, linux_ptrace, todo);
 return (EDOOFUS);
}
