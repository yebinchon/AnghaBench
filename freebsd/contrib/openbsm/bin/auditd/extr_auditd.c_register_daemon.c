
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int pid_t ;
typedef int FILE ;


 int AUDITD_PIDFILE ;
 int LOCK_EX ;
 int LOCK_NB ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGTERM ;
 int audit_warn_ebusy () ;
 int audit_warn_tmpfile () ;
 int auditd_log_err (char*) ;
 int auditd_relay_signal ;
 int fail_exit () ;
 int fflush (int *) ;
 int fileno (int *) ;
 scalar_t__ flock (int,int) ;
 int * fopen (int ,char*) ;
 scalar_t__ fprintf (int *,char*,int) ;
 int ftruncate (int,int ) ;
 int getpid () ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static int
register_daemon(void)
{
 struct sigaction action;
 FILE * pidfile;
 int fd;
 pid_t pid;


 action.sa_handler = auditd_relay_signal;




 action.sa_flags = 0;
 sigemptyset(&action.sa_mask);
 if (sigaction(SIGTERM, &action, ((void*)0)) != 0) {
  auditd_log_err(
      "Could not set signal handler for SIGTERM");
  fail_exit();
 }
 if (sigaction(SIGCHLD, &action, ((void*)0)) != 0) {
  auditd_log_err(
      "Could not set signal handler for SIGCHLD");
  fail_exit();
 }
 if (sigaction(SIGHUP, &action, ((void*)0)) != 0) {
  auditd_log_err(
      "Could not set signal handler for SIGHUP");
  fail_exit();
 }
 if (sigaction(SIGALRM, &action, ((void*)0)) != 0) {
  auditd_log_err(
      "Could not set signal handler for SIGALRM");
  fail_exit();
 }

 if ((pidfile = fopen(AUDITD_PIDFILE, "a")) == ((void*)0)) {
  auditd_log_err("Could not open PID file");
  audit_warn_tmpfile();
  return (-1);
 }


 fd = fileno(pidfile);
 if (flock(fd, LOCK_EX | LOCK_NB) < 0) {
  auditd_log_err(
      "PID file is locked (is another auditd running?).");
  audit_warn_ebusy();
  return (-1);
 }

 pid = getpid();
 ftruncate(fd, 0);
 if (fprintf(pidfile, "%u\n", pid) < 0) {

  fail_exit();
 }

 fflush(pidfile);
 return (0);
}
