
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {scalar_t__ pl_lwpid; } ;
typedef int pl ;
typedef long lwpid_t ;
typedef int caddr_t ;


 int PT_LWPINFO ;
 int bfd_map_over_sections (int ,int ,long*) ;
 int core_bfd ;
 int fbsd_core_get_first_lwp ;
 int perror_with_name (char*) ;
 scalar_t__ ptrace (int ,int,int ,int) ;
 int target_has_execution ;

__attribute__((used)) static long
get_current_lwp (int pid)
{
  struct ptrace_lwpinfo pl;
  lwpid_t lwpid;

  if (!target_has_execution)
    {
      lwpid = 0;
      bfd_map_over_sections (core_bfd, fbsd_core_get_first_lwp, &lwpid);
      return lwpid;
    }
  if (ptrace (PT_LWPINFO, pid, (caddr_t)&pl, sizeof(pl)))
    perror_with_name("PT_LWPINFO");

  return (long)pl.pl_lwpid;
}
