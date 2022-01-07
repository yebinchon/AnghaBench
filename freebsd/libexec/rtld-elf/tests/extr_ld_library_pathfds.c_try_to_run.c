
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int atf_tc_fail (char*) ;
 scalar_t__ atf_utils_fork () ;
 int atf_utils_wait (scalar_t__,int,char const*,char const*) ;
 int fexecve (int,char* const*,char* const*) ;

__attribute__((used)) static void
try_to_run(int binary, int exit_status, char * const *env,
        const char *expected_out, const char *expected_err)
{
 pid_t child = atf_utils_fork();

 if (child == 0) {
  char * const args[] = { "target", ((void*)0) };

  fexecve(binary, args, env);
  atf_tc_fail("fexecve() failed");
 }

 atf_utils_wait(child, exit_status, expected_out, expected_err);
}
