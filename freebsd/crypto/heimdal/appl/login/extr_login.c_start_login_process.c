
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env ;
 char* login_conf_get_string (char*) ;
 int simple_execle (char*,char*,int *,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
start_login_process(void)
{
    char *prog, *argv0;
    prog = login_conf_get_string("login_program");
    if(prog == ((void*)0))
 return 0;
    argv0 = strrchr(prog, '/');

    if(argv0)
 argv0++;
    else
 argv0 = prog;

    return simple_execle(prog, argv0, ((void*)0), env);
}
