
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long si_signo; unsigned long si_errno; unsigned long si_code; unsigned long si_uid; unsigned long si_pid; unsigned long si_status; scalar_t__ si_stime; scalar_t__ si_utime; } ;
typedef TYPE_1__ siginfo_t ;


 int ATF_REQUIRE_EQ (int,int ) ;
 int SIGCHLD ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WTERMSIG (int) ;
 int child ;
 int code ;
 int getuid () ;
 int printf (char*,...) ;
 int status ;

__attribute__((used)) static void
sigchild_action(int signo, siginfo_t *info, void *ptr)
{
 if (info != ((void*)0)) {
  printf("info=%p\n", info);
  printf("ptr=%p\n", ptr);
  printf("si_signo=%d\n", info->si_signo);
  printf("si_errno=%d\n", info->si_errno);
  printf("si_code=%d\n", info->si_code);
  printf("si_uid=%d\n", info->si_uid);
  printf("si_pid=%d\n", info->si_pid);
  printf("si_status=%d\n", info->si_status);




 }
 ATF_REQUIRE_EQ(info->si_code, code);
 ATF_REQUIRE_EQ(info->si_signo, SIGCHLD);
 ATF_REQUIRE_EQ(info->si_uid, getuid());
 ATF_REQUIRE_EQ(info->si_pid, child);
 if (WIFEXITED(info->si_status))
  ATF_REQUIRE_EQ(WEXITSTATUS(info->si_status), status);
 else if (WIFSTOPPED(info->si_status))
  ATF_REQUIRE_EQ(WSTOPSIG(info->si_status), status);
 else if (WIFSIGNALED(info->si_status))
  ATF_REQUIRE_EQ(WTERMSIG(info->si_status), status);
}
