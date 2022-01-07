
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int err (int,char*) ;
 int execve (char*,char**,char**) ;
 int fork () ;
 int sleep (int) ;
 char* strdup (char*) ;
 int wait (int*) ;

__attribute__((used)) static int
child(void)
{
 pid_t ch;
 int status;
 char *argv[] = { ((void*)0), ((void*)0) };
 char *envp[] = { ((void*)0), ((void*)0) };

 if ((argv[0] = strdup("true")) == ((void*)0))
  err(EXIT_FAILURE, "strdup(\"true\")");

 if ((envp[0] = strdup("FOO=BAZ")) == ((void*)0))
  err(EXIT_FAILURE, "strdup(\"FOO=BAZ\")");


 (void)sleep(2);


 switch (ch = fork()) {
 case -1:
  return EXIT_FAILURE;

 case 0:
  return EXIT_SUCCESS;

 default:
  wait(&status);
  break;
 }


 execve("/usr/bin/true", argv, envp);


 return EXIT_FAILURE;
}
