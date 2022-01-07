
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {uintptr_t sa_handler; int sa_flags; int sa_mask; } ;
struct TYPE_3__ {uintptr_t lsa_handler; int lsa_flags; scalar_t__ lsa_restorer; int lsa_mask; } ;
typedef TYPE_1__ l_sigaction_t ;


 int LINUX_SA_NOCLDSTOP ;
 int LINUX_SA_NOCLDWAIT ;
 int LINUX_SA_NOMASK ;
 int LINUX_SA_ONESHOT ;
 int LINUX_SA_ONSTACK ;
 int LINUX_SA_RESTART ;
 int LINUX_SA_SIGINFO ;
 int SA_NOCLDSTOP ;
 int SA_NOCLDWAIT ;
 int SA_NODEFER ;
 int SA_ONSTACK ;
 int SA_RESETHAND ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 int bsd_to_linux_sigset (int *,int *) ;

__attribute__((used)) static void
bsd_to_linux_sigaction(struct sigaction *bsa, l_sigaction_t *lsa)
{

 bsd_to_linux_sigset(&bsa->sa_mask, &lsa->lsa_mask);



 lsa->lsa_handler = bsa->sa_handler;

 lsa->lsa_restorer = 0;
 lsa->lsa_flags = 0;
 if (bsa->sa_flags & SA_NOCLDSTOP)
  lsa->lsa_flags |= LINUX_SA_NOCLDSTOP;
 if (bsa->sa_flags & SA_NOCLDWAIT)
  lsa->lsa_flags |= LINUX_SA_NOCLDWAIT;
 if (bsa->sa_flags & SA_SIGINFO)
  lsa->lsa_flags |= LINUX_SA_SIGINFO;
 if (bsa->sa_flags & SA_ONSTACK)
  lsa->lsa_flags |= LINUX_SA_ONSTACK;
 if (bsa->sa_flags & SA_RESTART)
  lsa->lsa_flags |= LINUX_SA_RESTART;
 if (bsa->sa_flags & SA_RESETHAND)
  lsa->lsa_flags |= LINUX_SA_ONESHOT;
 if (bsa->sa_flags & SA_NODEFER)
  lsa->lsa_flags |= LINUX_SA_NOMASK;
}
