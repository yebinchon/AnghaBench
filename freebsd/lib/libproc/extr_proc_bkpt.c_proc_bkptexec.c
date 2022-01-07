
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int dummy; } ;
typedef int caddr_t ;


 int DPRINTFX (char*) ;
 int PT_STEP ;
 int REG_PC ;
 int WIFSTOPPED (int) ;
 int assert (int) ;
 scalar_t__ proc_bkptdel (struct proc_handle*,unsigned long,unsigned long) ;
 int proc_bkptregadj (unsigned long*) ;
 scalar_t__ proc_bkptset (struct proc_handle*,unsigned long,unsigned long*) ;
 int proc_getpid (struct proc_handle*) ;
 int proc_getwstat (struct proc_handle*) ;
 scalar_t__ proc_regget (struct proc_handle*,int ,unsigned long*) ;
 int proc_regset (struct proc_handle*,int ,unsigned long) ;
 int proc_wstatus (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

int
proc_bkptexec(struct proc_handle *phdl, unsigned long saved)
{
 unsigned long pc;
 unsigned long samesaved;
 int status;

 if (proc_regget(phdl, REG_PC, &pc) < 0) {
  DPRINTFX("ERROR: couldn't get PC register");
  return (-1);
 }
 proc_bkptregadj(&pc);
 if (proc_bkptdel(phdl, pc, saved) < 0) {
  DPRINTFX("ERROR: couldn't delete breakpoint");
  return (-1);
 }




 proc_regset(phdl, REG_PC, pc);
 if (ptrace(PT_STEP, proc_getpid(phdl), (caddr_t)1, 0) < 0) {
  DPRINTFX("ERROR: ptrace step failed");
  return (-1);
 }
 proc_wstatus(phdl);
 status = proc_getwstat(phdl);
 if (!WIFSTOPPED(status)) {
  DPRINTFX("ERROR: don't know why process stopped");
  return (-1);
 }




 if (proc_bkptset(phdl, pc, &samesaved) < 0) {
  DPRINTFX("ERROR: couldn't restore breakpoint");
  return (-1);
 }
 assert(samesaved == saved);

 return (0);
}
