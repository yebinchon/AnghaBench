
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGCANCEL ;
 int SIGDELSET (int ,int ) ;
 int SIG_UNBLOCK ;
 int __sys_sigprocmask (int,int const*,int *) ;

int
__thr_sigprocmask(int how, const sigset_t *set, sigset_t *oset)
{
 const sigset_t *p = set;
 sigset_t newset;

 if (how != SIG_UNBLOCK) {
  if (set != ((void*)0)) {
   newset = *set;
   SIGDELSET(newset, SIGCANCEL);
   p = &newset;
  }
 }
 return (__sys_sigprocmask(how, p, oset));
}
