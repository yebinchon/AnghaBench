
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
typedef int mask ;


 int EAGAIN ;
 int ITIMER_REAL ;
 int PJDLOG_ASSERT (int ) ;
 int PJDLOG_VERIFY (int) ;
 int SIGALRM ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int bcopy (int const*,int *,int) ;
 int errno ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;
 scalar_t__ sigaddset (int *,int) ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 scalar_t__ sigwait (int *,int*) ;
 int timerclear (TYPE_1__*) ;

__attribute__((used)) static int
sigtimedwait(const sigset_t *set, siginfo_t *info,
    const struct timespec *timeout)
{
 struct itimerval it;
 sigset_t mask;
 int error, signo;

 PJDLOG_ASSERT(info == ((void*)0));

 PJDLOG_VERIFY(sigemptyset(&mask) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, SIGALRM) == 0);
 PJDLOG_VERIFY(sigprocmask(SIG_BLOCK, &mask, ((void*)0)) == 0);

 timerclear(&it.it_interval);
 it.it_value.tv_sec = timeout->tv_sec;
 it.it_value.tv_usec = timeout->tv_nsec / 1000;
 if (it.it_value.tv_sec == 0 && it.it_value.tv_usec == 0)
  it.it_value.tv_usec = 1;
 PJDLOG_VERIFY(setitimer(ITIMER_REAL, &it, ((void*)0)) == 0);

 bcopy(set, &mask, sizeof(mask));
 PJDLOG_VERIFY(sigaddset(&mask, SIGALRM) == 0);

 PJDLOG_VERIFY(sigwait(&mask, &signo) == 0);
 error = errno;

 timerclear(&it.it_interval);
 timerclear(&it.it_value);
 PJDLOG_VERIFY(setitimer(ITIMER_REAL, &it, ((void*)0)) == 0);

 PJDLOG_VERIFY(sigemptyset(&mask) == 0);
 PJDLOG_VERIFY(sigaddset(&mask, SIGALRM) == 0);
 PJDLOG_VERIFY(sigprocmask(SIG_UNBLOCK, &mask, ((void*)0)) == 0);

 if (signo == SIGALRM) {
  errno = EAGAIN;
  signo = -1;
 } else {
  errno = error;
 }

 return (signo);
}
