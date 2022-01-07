
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_code; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ (int,int ) ;
 int SIGTRAP ;
 int TRAP_TRACE ;
 int caught ;

__attribute__((used)) static void
sigtrap_handler(int sig, siginfo_t *info, void *ctx)
{
 ATF_REQUIRE_EQ(sig, SIGTRAP);
 ATF_REQUIRE_EQ(info->si_code, TRAP_TRACE);

 ++caught;
}
