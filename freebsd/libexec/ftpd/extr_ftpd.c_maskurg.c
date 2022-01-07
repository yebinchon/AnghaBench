
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int LOG_ERR ;
 int SIGURG ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int errno ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int syslog (int ,char*) ;
 int transflag ;

__attribute__((used)) static void
maskurg(int flag)
{
 int oerrno;
 sigset_t sset;

 if (!transflag) {
  syslog(LOG_ERR, "Internal: maskurg() while no transfer");
  return;
 }
 oerrno = errno;
 sigemptyset(&sset);
 sigaddset(&sset, SIGURG);
 sigprocmask(flag ? SIG_BLOCK : SIG_UNBLOCK, &sset, ((void*)0));
 errno = oerrno;
}
