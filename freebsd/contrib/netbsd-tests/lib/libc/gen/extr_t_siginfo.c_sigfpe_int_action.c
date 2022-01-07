
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_4__ {int si_errno; int si_code; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int FPE_INTDIV ;
 int SIGFPE ;
 int atf_tc_expect_pass () ;
 int atf_tc_fail (char*) ;
 int intdiv_signalled ;
 int sig_debug (int,TYPE_1__*,int *) ;
 int sigfpe_int_env ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void
sigfpe_int_action(int signo, siginfo_t *info, void *ptr)
{

 sig_debug(signo, info, (ucontext_t *)ptr);

 if (intdiv_signalled++ != 0)
  atf_tc_fail("INTDIV handler called more than once");

 ATF_REQUIRE_EQ(info->si_signo, SIGFPE);
 ATF_REQUIRE_EQ(info->si_code, FPE_INTDIV);
 atf_tc_expect_pass();
 ATF_REQUIRE_EQ(info->si_errno, 0);

 siglongjmp(sigfpe_int_env, 1);
}
