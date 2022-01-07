
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {unsigned long elr; unsigned long r_rip; unsigned long r_pc; unsigned long r_eip; unsigned long* r_regs; unsigned long pc; unsigned long sepc; unsigned long sp; unsigned long r_rsp; unsigned long r_sp; unsigned long r_esp; unsigned long* fixreg; } ;
struct proc_handle {scalar_t__ status; } ;
typedef int proc_reg_t ;
typedef int caddr_t ;


 int DPRINTFX (char*,int) ;
 int ENOENT ;
 size_t PC ;
 scalar_t__ PS_DEAD ;
 scalar_t__ PS_IDLE ;
 scalar_t__ PS_UNDEAD ;
 int PT_GETREGS ;
 int PT_SETREGS ;


 size_t SP ;
 int errno ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

int
proc_regset(struct proc_handle *phdl, proc_reg_t reg, unsigned long regvalue)
{
 struct reg regs;

 if (phdl->status == PS_DEAD || phdl->status == PS_UNDEAD ||
     phdl->status == PS_IDLE) {
  errno = ENOENT;
  return (-1);
 }
 if (ptrace(PT_GETREGS, proc_getpid(phdl), (caddr_t)&regs, 0) < 0)
  return (-1);
 switch (reg) {
 case 129:



  regs.r_rip = regvalue;
  break;
 case 128:



  regs.r_rsp = regvalue;
  break;
 default:
  DPRINTFX("ERROR: no support for reg number %d", reg);
  return (-1);
 }
 if (ptrace(PT_SETREGS, proc_getpid(phdl), (caddr_t)&regs, 0) < 0)
  return (-1);

 return (0);
}
