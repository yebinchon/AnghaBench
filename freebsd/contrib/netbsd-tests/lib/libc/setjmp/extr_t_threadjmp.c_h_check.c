
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef int sigjmp_buf ;
typedef int jmp_buf ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*) ;
 int REQUIRE_ERRNO (int) ;
 int SIGABRT ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int TEST_SETJMP ;
 int TEST_SIGSETJMP_NOSAVE ;
 int TEST_SIGSETJMP_SAVE ;
 int TEST_U_SETJMP ;
 int _longjmp (int ,int) ;
 int _setjmp (int ) ;
 int aborthandler ;
 int atf_tc_fail (char*) ;
 int atf_tc_pass () ;
 int expectsignal ;
 int getpid () ;
 int kill (int,int ) ;
 int longjmp (int ,int) ;
 scalar_t__ myself ;
 scalar_t__ pthread_self () ;
 int setjmp (int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int siglongjmp (int ,int) ;
 int sigprocmask (int ,int *,int *) ;
 int sigsetjmp (int ,int) ;

__attribute__((used)) static void
h_check(int test)
{
 struct sigaction sa;
 jmp_buf jb;
 sigjmp_buf sjb;
 sigset_t ss;
 int i, x;

 myself = pthread_self();
 i = getpid();

 if (test == TEST_SETJMP || test == TEST_SIGSETJMP_SAVE)
  expectsignal = 0;
 else if (test == TEST_U_SETJMP || test == TEST_SIGSETJMP_NOSAVE)
  expectsignal = 1;
 else
  atf_tc_fail("unknown test");

 sa.sa_handler = aborthandler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 REQUIRE_ERRNO(sigaction(SIGABRT, &sa, ((void*)0)) != -1);
 REQUIRE_ERRNO(sigemptyset(&ss) != -1);
 REQUIRE_ERRNO(sigaddset(&ss, SIGABRT) != -1);
 REQUIRE_ERRNO(sigprocmask(SIG_BLOCK, &ss, ((void*)0)) != -1);
 ATF_REQUIRE(myself == pthread_self());

 if (test == TEST_SETJMP)
  x = setjmp(jb);
 else if (test == TEST_U_SETJMP)
  x = _setjmp(jb);
 else
  x = sigsetjmp(sjb, !expectsignal);

 if (x != 0) {
  ATF_REQUIRE(myself == pthread_self());
  ATF_REQUIRE_MSG(x == i, "setjmp returned wrong value");
  kill(i, SIGABRT);
  ATF_REQUIRE_MSG(!expectsignal, "kill(SIGABRT) failed");
  ATF_REQUIRE(myself == pthread_self());
  atf_tc_pass();
 }

 ATF_REQUIRE(myself == pthread_self());
 REQUIRE_ERRNO(sigprocmask(SIG_UNBLOCK, &ss, ((void*)0)) != -1);

 if (test == TEST_SETJMP)
  longjmp(jb, i);
 else if (test == TEST_U_SETJMP)
  _longjmp(jb, i);
 else
  siglongjmp(sjb, i);

 atf_tc_fail("jmp failed");
}
