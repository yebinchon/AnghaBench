
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int utmpx ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;
struct utmpx {int ut_pid; TYPE_1__ ut_tv; int ut_type; int ut_id; int ut_line; int ut_user; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct arg_val {int argv; scalar_t__ argc; scalar_t__ size; } ;


 int AUTH_VALID ;
 int LOGIN_PROCESS ;
 int LOG_ERR ;
 int LOG_INFO ;
 int addarg (struct arg_val*,char const*) ;
 scalar_t__ auth_level ;
 char* clean_ttyname (int ) ;
 int closelog () ;
 int * decrypt_input ;
 int * encrypt_output ;
 int errno ;
 int execv (int ,int ) ;
 int fatal (int ,char*) ;
 int fatalperror_errno (int ,int ,int) ;
 char* getenv (char*) ;
 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int line ;
 scalar_t__ log_unauth ;
 char* make_id (char*) ;
 int malloc (int ) ;
 int memset (struct utmpx*,int ,int) ;
 int net ;
 int new_login ;
 int no_warn ;
 int printf (char*) ;
 int * pututxline (struct utmpx*) ;
 scalar_t__ require_otp ;
 int scrub_env () ;
 int sleep (int) ;
 char* strdup (char*) ;
 int strncpy (int ,char*,int) ;
 int syslog (int ,char*,char const*,...) ;
 int unsetenv (char*) ;

void
start_login(const char *host, int autologin, char *name)
{
    struct arg_val argv;
    char *user;
    int save_errno;
    scrub_env();
    argv.size=0;
    argv.argc=0;
    argv.argv=malloc(0);
    addarg(&argv, "login");
    addarg(&argv, "-h");
    addarg(&argv, host);
    addarg(&argv, "-p");
    if(name && name[0])
 user = name;
    else
 user = getenv("USER");
    if(user){
 addarg(&argv, "--");
 addarg(&argv, strdup(user));
    }
    if (getenv("USER")) {
 unsetenv("USER");
    }
    closelog();





    sleep(1);

    execv(new_login, argv.argv);
    save_errno = errno;
    syslog(LOG_ERR, "%s: %m", new_login);
    fatalperror_errno(net, new_login, save_errno);

}
