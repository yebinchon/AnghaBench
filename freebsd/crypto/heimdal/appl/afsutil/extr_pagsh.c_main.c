
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tf ;
struct passwd {char* pw_shell; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 scalar_t__ ENOENT ;
 char* TKT_ROOT ;
 scalar_t__ c_flag ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int esetenv (char*,char*,int) ;
 int execv (char*,char**) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int getargs ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ help_flag ;
 struct passwd* k_getpwuid (scalar_t__) ;
 scalar_t__ k_hasafs () ;
 int k_setpag () ;
 scalar_t__ krb5_cc_close (int ,int ) ;
 char* krb5_cc_get_name (int ,int ) ;
 char* krb5_cc_get_type (int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 char** malloc (unsigned int) ;
 int mkstemp (char*) ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int typename_arg ;
 int unlink (char*) ;
 int unsetenv (char*) ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    int f;
    char tf[1024];
    char *p;

    char *path;
    char **args;
    unsigned int i;
    int optind = 0;

    setprogname(argv[0]);
    if(getarg(getargs, num_args, argc, argv, &optind))
 usage(1);
    if(help_flag)
 usage(0);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    argc -= optind;
    argv += optind;
    snprintf (tf, sizeof(tf), "%s_XXXXXX", TKT_ROOT);
    f = mkstemp (tf);
    if (f < 0)
 err(1, "mkstemp failed");
    close (f);
    unlink (tf);
    esetenv("KRBTKFILE", tf, 1);

    i = 0;

    args = (char **) malloc((argc + 10)*sizeof(char *));
    if (args == ((void*)0))
 errx (1, "Out of memory allocating %lu bytes",
       (unsigned long)((argc + 10)*sizeof(char *)));

    if(*argv == ((void*)0)) {
 path = getenv("SHELL");
 if(path == ((void*)0)){
     struct passwd *pw = k_getpwuid(geteuid());
     if (pw == ((void*)0))
  errx(1, "no such user: %d", (int)geteuid());
     path = strdup(pw->pw_shell);
 }
    } else {
 path = strdup(*argv++);
    }
    if (path == ((void*)0))
 errx (1, "Out of memory copying path");

    p=strrchr(path, '/');
    if(p)
 args[i] = strdup(p+1);
    else
 args[i] = strdup(path);

    if (args[i++] == ((void*)0))
 errx (1, "Out of memory copying arguments");

    while(*argv)
 args[i++] = *argv++;

    args[i++] = ((void*)0);

    if(k_hasafs())
 k_setpag();

    unsetenv("PAGPID");
    execvp(path, args);
    if (errno == ENOENT || c_flag) {
 char **sh_args = malloc ((i + 2) * sizeof(char *));
 unsigned int j;

 if (sh_args == ((void*)0))
     errx (1, "Out of memory copying sh arguments");
 for (j = 1; j < i; ++j)
     sh_args[j + 2] = args[j];
 sh_args[0] = "sh";
 sh_args[1] = "-c";
 sh_args[2] = path;
 execv ("/bin/sh", sh_args);
    }
    err (1, "execvp");
}
