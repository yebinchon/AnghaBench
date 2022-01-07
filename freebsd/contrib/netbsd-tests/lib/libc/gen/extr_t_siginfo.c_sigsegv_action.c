
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_4__ {int si_addr; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ (int ,void*) ;
 void* SEGV_MAPERR ;
 void* SIGSEGV ;
 int atf_tc_pass () ;
 int sig_debug (int,TYPE_1__*,int *) ;

__attribute__((used)) static void
sigsegv_action(int signo, siginfo_t *info, void *ptr)
{

 sig_debug(signo, info, (ucontext_t *)ptr);

 ATF_REQUIRE_EQ(info->si_signo, SIGSEGV);
 ATF_REQUIRE_EQ(info->si_errno, 0);
 ATF_REQUIRE_EQ(info->si_code, SEGV_MAPERR);
 ATF_REQUIRE_EQ(info->si_addr, (void *)0);

 atf_tc_pass();

}
