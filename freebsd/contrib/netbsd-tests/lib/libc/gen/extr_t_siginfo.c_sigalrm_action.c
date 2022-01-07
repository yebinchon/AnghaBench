
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_5__ {int sival_int; } ;
struct TYPE_6__ {TYPE_1__ si_value; int si_code; int si_signo; } ;
typedef TYPE_2__ siginfo_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int ITIMER_REAL ;
 int SIGALRM ;
 int SI_TIMER ;
 int atf_tc_pass () ;
 int sig_debug (int,TYPE_2__*,int *) ;

__attribute__((used)) static void
sigalrm_action(int signo, siginfo_t *info, void *ptr)
{

 sig_debug(signo, info, (ucontext_t *)ptr);

 ATF_REQUIRE_EQ(info->si_signo, SIGALRM);
 ATF_REQUIRE_EQ(info->si_code, SI_TIMER);
 ATF_REQUIRE_EQ(info->si_value.sival_int, ITIMER_REAL);

 atf_tc_pass();

}
