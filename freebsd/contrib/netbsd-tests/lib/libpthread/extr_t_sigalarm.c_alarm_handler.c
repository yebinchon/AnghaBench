
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ_MSG (int ,int,char*) ;
 int alarm_set ;

__attribute__((used)) static void
alarm_handler(int signo, siginfo_t *si, void *ctx)
{
 ATF_REQUIRE_EQ_MSG(si->si_signo, signo, "Received unexpected signal");
 alarm_set = 1;
}
