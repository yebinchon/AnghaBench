
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct fork_req {int fr_flags; int* fr_pd_fd; struct filecaps* fr_pd_fcaps; } ;
struct filecaps {int fc_rights; } ;
struct cloudabi_sys_proc_fork_args {int dummy; } ;
typedef int fr ;


 int CAP_EVENT ;
 int CAP_FSTAT ;
 int RFFDG ;
 int RFPROC ;
 int RFPROCDESC ;
 int bzero (struct fork_req*,int) ;
 int cap_rights_init (int *,int ,int ) ;
 int fork1 (struct thread*,struct fork_req*) ;

int
cloudabi_sys_proc_fork(struct thread *td,
    struct cloudabi_sys_proc_fork_args *uap)
{
 struct fork_req fr;
 struct filecaps fcaps = {};
 int error, fd;

 cap_rights_init(&fcaps.fc_rights, CAP_FSTAT, CAP_EVENT);
 bzero(&fr, sizeof(fr));
 fr.fr_flags = RFFDG | RFPROC | RFPROCDESC;
 fr.fr_pd_fd = &fd;
 fr.fr_pd_fcaps = &fcaps;
 error = fork1(td, &fr);
 if (error != 0)
  return (error);

 td->td_retval[0] = fd;
 return (0);
}
