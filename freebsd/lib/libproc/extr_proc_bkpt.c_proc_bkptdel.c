
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ptrace_io_desc {unsigned long* piod_addr; int piod_len; void* piod_offs; int piod_op; } ;
struct proc_handle {scalar_t__ status; } ;
typedef unsigned long instr_t ;
typedef int caddr_t ;


 int BREAKPOINT_INSTR_SZ ;
 int DPRINTF (char*,int ) ;
 int DPRINTFX (char*,uintptr_t) ;
 int ENOENT ;
 int PIOD_WRITE_I ;
 scalar_t__ PS_DEAD ;
 scalar_t__ PS_IDLE ;
 scalar_t__ PS_STOP ;
 scalar_t__ PS_UNDEAD ;
 int PT_IO ;
 int errno ;
 int proc_continue (struct proc_handle*) ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ proc_stop (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

int
proc_bkptdel(struct proc_handle *phdl, uintptr_t address,
    unsigned long saved)
{
 struct ptrace_io_desc piod;
 int ret = 0, stopped;
 instr_t instr;

 if (phdl->status == PS_DEAD || phdl->status == PS_UNDEAD ||
     phdl->status == PS_IDLE) {
  errno = ENOENT;
  return (-1);
 }

 DPRINTFX("removing breakpoint at 0x%lx", address);

 stopped = 0;
 if (phdl->status != PS_STOP) {
  if (proc_stop(phdl) != 0)
   return (-1);
  stopped = 1;
 }




 instr = saved;
 piod.piod_op = PIOD_WRITE_I;
 piod.piod_offs = (void *)address;
 piod.piod_addr = &instr;
 piod.piod_len = BREAKPOINT_INSTR_SZ;
 if (ptrace(PT_IO, proc_getpid(phdl), (caddr_t)&piod, 0) < 0) {
  DPRINTF("ERROR: couldn't write instruction at address 0x%jx",
      (uintmax_t)address);
  ret = -1;
 }

 if (stopped)

  proc_continue(phdl);

 return (ret);
}
