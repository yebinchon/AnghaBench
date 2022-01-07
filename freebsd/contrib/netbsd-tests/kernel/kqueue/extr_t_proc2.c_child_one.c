
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;
typedef int pid_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int _exit (int ) ;
 int child_two () ;
 int err (int ,char*,...) ;
 int fork () ;
 struct passwd* getpwnam (char const*) ;
 int setuid (int ) ;

__attribute__((used)) static void
child_one(void)
{
 pid_t pid;
 struct passwd *pwd;
 const char *nam = "nobody";

 pwd = getpwnam(nam);
 if (pwd == ((void*)0))
  err(EXIT_FAILURE, "getpwnam(\"%s\")", nam);

 if ((setuid(pwd->pw_uid)) == -1)
  err(EXIT_FAILURE, "setuid(%d)", pwd->pw_uid);

 pid = fork();
 if (pid == -1)
  err(EXIT_FAILURE, "fork()");

 if (pid == 0)
  child_two();

 _exit(EXIT_SUCCESS);
}
