
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__* td_retval; } ;
typedef int sigset_t ;
typedef int l_sigset_t ;


 int EINVAL ;



 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SIG_UNBLOCK ;
 int bsd_to_linux_sigset (int *,int *) ;
 int kern_sigprocmask (struct thread*,int,int *,int *,int ) ;
 int linux_to_bsd_sigset (int *,int *) ;

__attribute__((used)) static int
linux_do_sigprocmask(struct thread *td, int how, l_sigset_t *new,
       l_sigset_t *old)
{
 sigset_t omask, nmask;
 sigset_t *nmaskp;
 int error;

 td->td_retval[0] = 0;

 switch (how) {
 case 130:
  how = SIG_BLOCK;
  break;
 case 128:
  how = SIG_UNBLOCK;
  break;
 case 129:
  how = SIG_SETMASK;
  break;
 default:
  return (EINVAL);
 }
 if (new != ((void*)0)) {
  linux_to_bsd_sigset(new, &nmask);
  nmaskp = &nmask;
 } else
  nmaskp = ((void*)0);
 error = kern_sigprocmask(td, how, nmaskp, &omask, 0);
 if (error == 0 && old != ((void*)0))
  bsd_to_linux_sigset(&omask, old);

 return (error);
}
