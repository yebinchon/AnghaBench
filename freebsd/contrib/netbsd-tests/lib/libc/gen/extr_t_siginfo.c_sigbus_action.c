
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_4__ {int si_addr; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ (int ,void volatile*) ;
 void volatile* BUS_ADRALN ;
 void volatile* SIGBUS ;
 scalar_t__ addr ;
 int atf_tc_expect_fail (char*) ;
 int atf_tc_pass () ;
 int printf (char*,int ) ;
 int sig_debug (int,TYPE_1__*,int *) ;

__attribute__((used)) static void
sigbus_action(int signo, siginfo_t *info, void *ptr)
{

 printf("si_addr = %p\n", info->si_addr);
 sig_debug(signo, info, (ucontext_t *)ptr);

 ATF_REQUIRE_EQ(info->si_signo, SIGBUS);
 ATF_REQUIRE_EQ(info->si_errno, 0);
 ATF_REQUIRE_EQ(info->si_code, BUS_ADRALN);


 atf_tc_expect_fail("x86 architecture does not correctly "
     "report the address where the unaligned access occured");

 ATF_REQUIRE_EQ(info->si_addr, (volatile void *)addr);

 atf_tc_pass();

}
