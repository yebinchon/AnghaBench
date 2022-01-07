
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_cap {char* ca_default; } ;
struct udb {long* ue_pcpulim; long* ue_jcpulim; int * ue_nice; } ;
struct spwd {int dummy; } ;
struct passwd {scalar_t__ pw_uid; char const* pw_name; char* pw_dir; char const* pw_shell; scalar_t__ pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
typedef int * cap_t ;
typedef int buf ;


 scalar_t__ AUTH_KRB5 ;
 int CLOCKS_PER_SEC ;
 long CPUUNLIM ;
 int C_JOBPROCS ;
 int C_PROC ;
 int L_CPU ;
 int MAXPATHLEN ;
 int NSIG ;
 int SIG_DFL ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWUSR ;
 size_t UDBRC_INTER ;
 struct udb* UDB_NULL ;
 char const* _PATH_DEFPATH ;
 char* _PATH_ETC_ENVIRONMENT ;
 char* _PATH_LIMITS_CONF ;
 int add_env (char*,char const*) ;
 scalar_t__ auth ;
 int cap_free (int *) ;
 int * cap_from_text (char*) ;
 scalar_t__ cap_set_proc (int *) ;
 scalar_t__ chdir (char const*) ;
 int check_shadow (struct passwd const*,struct spwd*) ;
 int checknologin () ;
 scalar_t__ chmod (char*,int) ;
 scalar_t__ chown (char*,scalar_t__,scalar_t__) ;
 scalar_t__ do_osfc2_magic (scalar_t__) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exec_shell (char const*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (struct user_cap*) ;
 struct group* getgrnam (char*) ;
 struct spwd* getspnam (char const*) ;
 struct udb* getudbnam (char const*) ;
 scalar_t__ initgroups (char const*,scalar_t__) ;
 int krb5_finish () ;
 int krb5_get_afs_tokens (struct passwd const*) ;
 int krb5_start_session (struct passwd const*) ;
 scalar_t__ limit (int ,int ,int ,long) ;
 char* login_conf_get_string (char*) ;
 int login_read_env (char*) ;
 int nice (int ) ;
 int read_limits_conf (char const*,struct passwd const*) ;
 char* remote_host ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setlogin (char const*) ;
 int setpcred (char const*,int *) ;
 scalar_t__ setuid (scalar_t__) ;
 struct user_cap* sgi_getcapabilitybyname (char const*) ;
 int show_file (char const*) ;
 int signal (int,int ) ;
 int stderr ;
 int strsep_copy (char const**,char*,char*,int) ;
 int update_utmp (char const*,char*,char*,char*) ;
 int warn (char*,...) ;

__attribute__((used)) static void
do_login(const struct passwd *pwd, char *tty, char *ttyn)
{



    int rootlogin = (pwd->pw_uid == 0);
    gid_t tty_gid;
    struct group *gr;
    const char *home_dir;
    int i;

    if(!rootlogin)
 checknologin();





    update_utmp(pwd->pw_name, remote_host ? remote_host : "",
  tty, ttyn);

    gr = getgrnam ("tty");
    if (gr != ((void*)0))
 tty_gid = gr->gr_gid;
    else
 tty_gid = pwd->pw_gid;

    if (chown (ttyn, pwd->pw_uid, tty_gid) < 0) {
 warn("chown %s", ttyn);
 if (rootlogin == 0)
     exit (1);
    }

    if (chmod (ttyn, S_IRUSR | S_IWUSR | S_IWGRP) < 0) {
 warn("chmod %s", ttyn);
 if (rootlogin == 0)
     exit (1);
    }
    if(rootlogin == 0) {
 const char *file = login_conf_get_string("limits");
 if(file == ((void*)0))
     file = _PATH_LIMITS_CONF;

 read_limits_conf(file, pwd);
    }
    if(do_osfc2_magic(pwd->pw_uid))
 exit(1);
    if(setgid(pwd->pw_gid)){
 warn("setgid(%u)", (unsigned)pwd->pw_gid);
 if(rootlogin == 0)
     exit(1);
    }
    if(setuid(pwd->pw_uid) || (pwd->pw_uid != 0 && setuid(0) == 0)) {
 warn("setuid(%u)", (unsigned)pwd->pw_uid);
 if(rootlogin == 0)
     exit(1);
    }




    for (i = 1; i < NSIG; ++i)
 signal(i, SIG_DFL);
    home_dir = pwd->pw_dir;
    if (chdir(home_dir) < 0) {
 fprintf(stderr, "No home directory \"%s\"!\n", pwd->pw_dir);
 if (chdir("/"))
     exit(0);
 home_dir = "/";
 fprintf(stderr, "Logging in with home = \"/\".\n");
    }
    add_env("PATH", _PATH_DEFPATH);

    {
 const char *str = login_conf_get_string("environment");
 char buf[MAXPATHLEN];

 if(str == ((void*)0)) {
     login_read_env(_PATH_ETC_ENVIRONMENT);
 } else {
     while(strsep_copy(&str, ",", buf, sizeof(buf)) != -1) {
  if(buf[0] == '\0')
      continue;
  login_read_env(buf);
     }
 }
    }
    {
 const char *str = login_conf_get_string("motd");
 char buf[MAXPATHLEN];

 if(str != ((void*)0)) {
     while(strsep_copy(&str, ",", buf, sizeof(buf)) != -1) {
  if(buf[0] == '\0')
      continue;
  show_file(buf);
     }
 } else {
     str = login_conf_get_string("welcome");
     if(str != ((void*)0))
  show_file(str);
 }
    }
    add_env("HOME", home_dir);
    add_env("USER", pwd->pw_name);
    add_env("LOGNAME", pwd->pw_name);
    add_env("SHELL", pwd->pw_shell);
    exec_shell(pwd->pw_shell, rootlogin);
}
