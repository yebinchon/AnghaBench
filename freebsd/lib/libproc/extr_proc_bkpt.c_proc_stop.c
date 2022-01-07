
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int dummy; } ;


 int DPRINTF (char*,int ) ;
 int DPRINTFX (char*,int) ;
 int SIGSTOP ;
 int WIFSTOPPED (int) ;
 int WSTOPPED ;
 int kill (int ,int ) ;
 int proc_getpid (struct proc_handle*) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static int
proc_stop(struct proc_handle *phdl)
{
 int status;

 if (kill(proc_getpid(phdl), SIGSTOP) == -1) {
  DPRINTF("kill %d", proc_getpid(phdl));
  return (-1);
 } else if (waitpid(proc_getpid(phdl), &status, WSTOPPED) == -1) {
  DPRINTF("waitpid %d", proc_getpid(phdl));
  return (-1);
 } else if (!WIFSTOPPED(status)) {
  DPRINTFX("waitpid: unexpected status 0x%x", status);
  return (-1);
 }

 return (0);
}
