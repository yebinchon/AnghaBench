
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int env ;
 int err (int,char*,...) ;
 int execle (char*,char*,int *,int ) ;
 int fork () ;
 int getpid () ;
 char* login_conf_get_string (char*) ;
 int setpgid (int ,int ) ;
 int setproctitle (char*,int) ;
 char* strrchr (char*,char) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int
start_logout_process(void)
{
    char *prog, *argv0;
    pid_t pid;

    prog = login_conf_get_string("logout_program");
    if(prog == ((void*)0))
 return 0;
    argv0 = strrchr(prog, '/');

    if(argv0)
 argv0++;
    else
 argv0 = prog;

    pid = fork();
    if(pid == 0) {

 setpgid(0, getpid());
 return 0;
    }
    if(pid == -1)
 err(1, "fork");




    while(1) {
 int status;
 int ret;
 ret = waitpid(pid, &status, 0);
 if(ret > 0) {
     if(WIFEXITED(status) || WIFSIGNALED(status)) {
  execle(prog, argv0, ((void*)0), env);
  err(1, "exec %s", prog);
     }
 } else if(ret < 0)
     err(1, "waitpid");
    }
}
