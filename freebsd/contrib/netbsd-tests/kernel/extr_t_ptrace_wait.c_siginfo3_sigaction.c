
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_signo; int si_code; } ;
typedef TYPE_1__ siginfo_t ;


 int FORKEE_ASSERT_EQ (int,int ) ;
 int SIGTRAP ;
 int TRAP_BRKPT ;
 int siginfo3_caught ;

__attribute__((used)) static void
siginfo3_sigaction(int sig, siginfo_t *info, void *ctx)
{
 FORKEE_ASSERT_EQ(sig, SIGTRAP);

 FORKEE_ASSERT_EQ(info->si_signo, SIGTRAP);
 FORKEE_ASSERT_EQ(info->si_code, TRAP_BRKPT);

 ++siginfo3_caught;
}
