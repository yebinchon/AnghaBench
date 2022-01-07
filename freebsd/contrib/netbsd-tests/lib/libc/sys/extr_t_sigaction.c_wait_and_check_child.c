
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ATF_CHECK_EQ (int ,int ) ;
 int EXIT_SUCCESS ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int atf_tc_fail (char*,char const*,int) ;
 int waitpid (int const,int*,int ) ;

__attribute__((used)) static void
wait_and_check_child(const pid_t pid, const char *fail_message)
{
 int status;

 (void)waitpid(pid, &status, 0);

 if (WIFEXITED(status))
  ATF_CHECK_EQ(EXIT_SUCCESS, WEXITSTATUS(status));
 else
  atf_tc_fail("%s; raw exit status was %d", fail_message, status);
}
