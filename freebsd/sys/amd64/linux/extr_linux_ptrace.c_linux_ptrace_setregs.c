
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct reg {int dummy; } ;
struct linux_pt_reg {int dummy; } ;
typedef int pid_t ;
typedef int l_reg ;


 int PT_SETREGS ;
 int copyin (void*,struct linux_pt_reg*,int) ;
 int kern_ptrace (struct thread*,int ,int ,struct reg*,int ) ;
 int map_regs_from_linux (struct reg*,struct linux_pt_reg*) ;

__attribute__((used)) static int
linux_ptrace_setregs(struct thread *td, pid_t pid, void *data)
{
 struct reg b_reg;
 struct linux_pt_reg l_reg;
 int error;

 error = copyin(data, &l_reg, sizeof(l_reg));
 if (error != 0)
  return (error);
 map_regs_from_linux(&b_reg, &l_reg);
 error = kern_ptrace(td, PT_SETREGS, pid, &b_reg, 0);
 return (error);
}
