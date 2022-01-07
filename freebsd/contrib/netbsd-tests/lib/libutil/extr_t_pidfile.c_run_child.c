
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ATF_REQUIRE (int) ;
 scalar_t__ EXIT_SUCCESS ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int assert (int) ;
 int atf_tc_fail (char*) ;
 int fork () ;
 int in_child ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
run_child(void (*child)(const char *), const char *cookie)
{
 pid_t pid;

 pid = fork();
 ATF_REQUIRE(pid != -1);
 if (pid == 0) {
  in_child = 1;
  child(cookie);
  assert(0);

 } else {
  int status;

  ATF_REQUIRE(waitpid(pid, &status, 0) != -1);
  if (!WIFEXITED(status) || WEXITSTATUS(status) != EXIT_SUCCESS)
   atf_tc_fail("See stderr for details");
 }
}
