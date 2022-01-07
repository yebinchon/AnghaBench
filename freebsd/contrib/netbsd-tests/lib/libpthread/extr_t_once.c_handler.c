
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int atf_tc_fail (char*) ;

__attribute__((used)) static void
handler(int sig, siginfo_t *info, void *ctx)
{
 atf_tc_fail("Signal handler was called; "
  "main thread deadlocked in pthread_once()");
}
