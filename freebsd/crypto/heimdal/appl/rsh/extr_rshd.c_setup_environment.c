
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_shell; int pw_dir; int pw_name; } ;


 int _PATH_DEFPATH ;
 int _PATH_ETC_ENVIRONMENT ;
 int asprintf (char**,char*,...) ;
 scalar_t__ do_unique_tkfile ;
 int read_environment (int ,char***) ;
 char** realloc (char**,int) ;
 int strncmp (char*,char*,int) ;
 int syslog_and_die (char*) ;
 int tkfile ;

__attribute__((used)) static void
setup_environment (char ***env, const struct passwd *pwd)
{
    int i, j, path;
    char **e;

    i = 0;
    path = 0;
    *env = ((void*)0);

    i = read_environment(_PATH_ETC_ENVIRONMENT, env);
    e = *env;
    for (j = 0; j < i; j++) {
 if (!strncmp(e[j], "PATH=", 5)) {
     path = 1;
 }
    }

    e = *env;
    e = realloc(e, (i + 7) * sizeof(char *));

    if (asprintf (&e[i++], "USER=%s", pwd->pw_name) == -1)
 syslog_and_die ("asprintf: out of memory");
    if (asprintf (&e[i++], "HOME=%s", pwd->pw_dir) == -1)
 syslog_and_die ("asprintf: out of memory");
    if (asprintf (&e[i++], "SHELL=%s", pwd->pw_shell) == -1)
 syslog_and_die ("asprintf: out of memory");
    if (! path) {
 if (asprintf (&e[i++], "PATH=%s", _PATH_DEFPATH) == -1)
     syslog_and_die ("asprintf: out of memory");
    }
    asprintf (&e[i++], "SSH_CLIENT=only_to_make_bash_happy");
    if (do_unique_tkfile)
 if (asprintf (&e[i++], "KRB5CCNAME=%s", tkfile) == -1)
     syslog_and_die ("asprintf: out of memory");
    e[i++] = ((void*)0);
    *env = e;
}
