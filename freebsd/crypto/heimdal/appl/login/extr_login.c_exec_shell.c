
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _PATH_BSHELL ;
 int asprintf (char**,char*,char const*) ;
 int env ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int execle (char const*,char*,int *,int ) ;
 int extend_env (int *) ;
 scalar_t__ start_login_process () ;
 int start_logout_process () ;
 char* strrchr (char const*,char) ;
 int warn (char*) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static void
exec_shell(const char *shell, int fallback)
{
    char *sh;
    const char *p;

    extend_env(((void*)0));
    if(start_login_process() < 0)
 warn("login process");
    start_logout_process();

    p = strrchr(shell, '/');
    if(p)
 p++;
    else
 p = shell;
    if (asprintf(&sh, "-%s", p) == -1)
 errx(1, "Out of memory");
    execle(shell, sh, ((void*)0), env);
    if(fallback){
 warnx("Can't exec %s, trying %s",
       shell, _PATH_BSHELL);
 execle(_PATH_BSHELL, "-sh", ((void*)0), env);
 err(1, "%s", _PATH_BSHELL);
    }
    err(1, "%s", shell);
}
