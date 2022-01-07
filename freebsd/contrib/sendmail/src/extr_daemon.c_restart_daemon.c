
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigfunc_t ;
typedef int ARGV_T ;


 scalar_t__ DaemonPid ;
 scalar_t__ EX_OK ;
 int EX_OSERR ;
 int EX_OSFILE ;
 scalar_t__ ExternalEnviron ;
 int LOG_ALERT ;
 int LOG_INFO ;
 int LogLevel ;
 int NOQID ;
 scalar_t__ PendingSignal ;
 scalar_t__ RealUid ;
 char* RestartRequest ;
 scalar_t__ RunAsUid ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SM_NOOP_SIGNAL (int ,int ) ;
 scalar_t__ STDERR_FILENO ;
 char** SaveArgv ;
 scalar_t__ UseMSP ;
 int cleanup_shm (int) ;
 int close_sendmail_pid () ;
 int closecontrolsocket (int) ;
 scalar_t__ drop_privileges (int) ;
 int errno ;
 int execve (char*,int ,int ) ;
 int finis (int,int,int ) ;
 scalar_t__ getpid () ;
 int sm_allsignals (int) ;
 int sm_clear_events () ;
 int sm_close_on_exec (scalar_t__,int) ;
 char* sm_errstring (int) ;
 int sm_signal (int ,int ) ;
 int sm_syslog (int ,int ,char*,...) ;

void
restart_daemon()
{
 bool drop;
 int save_errno;
 char *reason;
 sigfunc_t ignore, oalrm, ousr1;
 extern int DtableSize;


 sm_clear_events();
 sm_allsignals(1);

 reason = RestartRequest;
 RestartRequest = ((void*)0);
 PendingSignal = 0;

 if (SaveArgv[0][0] != '/')
 {
  if (LogLevel > 3)
   sm_syslog(LOG_INFO, NOQID,
      "could not restart: need full path");
  finis(0, 1, EX_OSFILE);

 }
 if (LogLevel > 3)
  sm_syslog(LOG_INFO, NOQID, "restarting %s due to %s",
     SaveArgv[0],
     reason == ((void*)0) ? "implicit call" : reason);

 closecontrolsocket(1);





 close_sendmail_pid();
 drop = !(UseMSP && RunAsUid != 0 &&
   (RealUid == 0 || RealUid == RunAsUid));

 if (drop_privileges(drop) != EX_OK)
 {
  if (LogLevel > 0)
   sm_syslog(LOG_ALERT, NOQID,
      "could not drop privileges: %s",
      sm_errstring(errno));
  finis(0, 1, EX_OSERR);

 }

 sm_close_on_exec(STDERR_FILENO + 1, DtableSize);
 SM_NOOP_SIGNAL(SIGALRM, oalrm);
 SM_NOOP_SIGNAL(SIGCHLD, ignore);
 SM_NOOP_SIGNAL(SIGHUP, ignore);
 SM_NOOP_SIGNAL(SIGINT, ignore);
 SM_NOOP_SIGNAL(SIGPIPE, ignore);
 SM_NOOP_SIGNAL(SIGTERM, ignore);





 sm_allsignals(0);

 (void) execve(SaveArgv[0], (ARGV_T) SaveArgv, (ARGV_T) ExternalEnviron);
 save_errno = errno;


 sm_allsignals(1);


 (void) sm_signal(SIGALRM, oalrm);






 errno = save_errno;
 if (LogLevel > 0)
  sm_syslog(LOG_ALERT, NOQID, "could not exec %s: %s",
     SaveArgv[0], sm_errstring(errno));
 finis(0, 1, EX_OSFILE);

}
