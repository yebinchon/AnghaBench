
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_3__ {scalar_t__* sival_ptr; } ;
struct sigevent {TYPE_2__ it_value; int sigev_notify; TYPE_1__ sigev_value; int sigev_signo; int sa_mask; int sa_sigaction; int sa_flags; } ;
struct sigaction {TYPE_2__ it_value; int sigev_notify; TYPE_1__ sigev_value; int sigev_signo; int sa_mask; int sa_sigaction; int sa_flags; } ;
struct itimerspec {TYPE_2__ it_value; int sigev_notify; TYPE_1__ sigev_value; int sigev_signo; int sa_mask; int sa_sigaction; int sa_flags; } ;
typedef int sigset_t ;
typedef int clockid_t ;


 int ATF_REQUIRE (int) ;
 int SA_SIGINFO ;
 int SIGALRM ;
 int SIGEV_SIGNAL ;
 int SIG_SETMASK ;
 int SIG_UNBLOCK ;
 int atf_tc_fail (char*) ;
 int fail ;
 int memset (struct sigevent*,int ,int) ;
 scalar_t__ sigaction (int ,struct sigevent*,int *) ;
 scalar_t__ sigaddset (int *,int ) ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int sleep (int) ;
 scalar_t__ t ;
 scalar_t__ timer_create (int ,struct sigevent*,scalar_t__*) ;
 scalar_t__ timer_delete (scalar_t__) ;
 scalar_t__ timer_settime (scalar_t__,int ,struct sigevent*,int *) ;
 int timer_signal_handler ;

__attribute__((used)) static void
timer_signal_create(clockid_t cid, bool expire)
{
 struct itimerspec tim;
 struct sigaction act;
 struct sigevent evt;
 sigset_t set;

 t = 0;
 fail = 1;

 (void)memset(&evt, 0, sizeof(struct sigevent));
 (void)memset(&act, 0, sizeof(struct sigaction));
 (void)memset(&tim, 0, sizeof(struct itimerspec));




 act.sa_flags = SA_SIGINFO;
 act.sa_sigaction = timer_signal_handler;

 ATF_REQUIRE(sigemptyset(&set) == 0);
 ATF_REQUIRE(sigemptyset(&act.sa_mask) == 0);




 ATF_REQUIRE(sigaction(SIGALRM, &act, ((void*)0)) == 0);
 ATF_REQUIRE(sigaddset(&set, SIGALRM) == 0);
 ATF_REQUIRE(sigprocmask(SIG_SETMASK, &set, ((void*)0)) == 0);




 evt.sigev_signo = SIGALRM;
 evt.sigev_value.sival_ptr = &t;
 evt.sigev_notify = SIGEV_SIGNAL;

 ATF_REQUIRE(timer_create(cid, &evt, &t) == 0);




 tim.it_value.tv_sec = expire ? 5 : 1;
 tim.it_value.tv_nsec = 0;

 ATF_REQUIRE(timer_settime(t, 0, &tim, ((void*)0)) == 0);

 (void)sigprocmask(SIG_UNBLOCK, &set, ((void*)0));
 (void)sleep(2);

 if (expire) {
  if (!fail)
   atf_tc_fail("timer fired too soon");
 } else {
  if (fail)
   atf_tc_fail("timer failed to fire");
 }

 ATF_REQUIRE(timer_delete(t) == 0);
}
