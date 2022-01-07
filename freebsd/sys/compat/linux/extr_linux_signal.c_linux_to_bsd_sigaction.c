
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_handler; int sa_mask; } ;
struct TYPE_3__ {int lsa_flags; int lsa_handler; int lsa_mask; } ;
typedef TYPE_1__ l_sigaction_t ;


 int LINUX_SA_NOCLDSTOP ;
 int LINUX_SA_NOCLDWAIT ;
 int LINUX_SA_NOMASK ;
 int LINUX_SA_ONESHOT ;
 int LINUX_SA_ONSTACK ;
 int LINUX_SA_RESTART ;
 int LINUX_SA_SIGINFO ;
 int PTRIN (int ) ;
 int SA_NOCLDSTOP ;
 int SA_NOCLDWAIT ;
 int SA_NODEFER ;
 int SA_ONSTACK ;
 int SA_RESETHAND ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 int linux_to_bsd_sigset (int *,int *) ;

__attribute__((used)) static void
linux_to_bsd_sigaction(l_sigaction_t *lsa, struct sigaction *bsa)
{

 linux_to_bsd_sigset(&lsa->lsa_mask, &bsa->sa_mask);
 bsa->sa_handler = PTRIN(lsa->lsa_handler);
 bsa->sa_flags = 0;
 if (lsa->lsa_flags & LINUX_SA_NOCLDSTOP)
  bsa->sa_flags |= SA_NOCLDSTOP;
 if (lsa->lsa_flags & LINUX_SA_NOCLDWAIT)
  bsa->sa_flags |= SA_NOCLDWAIT;
 if (lsa->lsa_flags & LINUX_SA_SIGINFO)
  bsa->sa_flags |= SA_SIGINFO;
 if (lsa->lsa_flags & LINUX_SA_ONSTACK)
  bsa->sa_flags |= SA_ONSTACK;
 if (lsa->lsa_flags & LINUX_SA_RESTART)
  bsa->sa_flags |= SA_RESTART;
 if (lsa->lsa_flags & LINUX_SA_ONESHOT)
  bsa->sa_flags |= SA_RESETHAND;
 if (lsa->lsa_flags & LINUX_SA_NOMASK)
  bsa->sa_flags |= SA_NODEFER;
}
