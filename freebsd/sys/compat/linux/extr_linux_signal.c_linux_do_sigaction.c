
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigaction {int dummy; } ;
typedef int l_sigaction_t ;


 int EINVAL ;
 int LINUX_SIG_VALID (int) ;
 int bsd_to_linux_sigaction (struct sigaction*,int *) ;
 int kern_sigaction (struct thread*,int,struct sigaction*,struct sigaction*,int ) ;
 int linux_to_bsd_sigaction (int *,struct sigaction*) ;
 int linux_to_bsd_signal (int) ;

int
linux_do_sigaction(struct thread *td, int linux_sig, l_sigaction_t *linux_nsa,
     l_sigaction_t *linux_osa)
{
 struct sigaction act, oact, *nsa, *osa;
 int error, sig;

 if (!LINUX_SIG_VALID(linux_sig))
  return (EINVAL);

 osa = (linux_osa != ((void*)0)) ? &oact : ((void*)0);
 if (linux_nsa != ((void*)0)) {
  nsa = &act;
  linux_to_bsd_sigaction(linux_nsa, nsa);
 } else
  nsa = ((void*)0);
 sig = linux_to_bsd_signal(linux_sig);

 error = kern_sigaction(td, sig, nsa, osa, 0);
 if (error)
  return (error);

 if (linux_osa != ((void*)0))
  bsd_to_linux_sigaction(osa, linux_osa);

 return (0);
}
