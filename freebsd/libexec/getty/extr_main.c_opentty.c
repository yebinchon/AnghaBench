
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int LOG_ERR ;
 int close (int) ;
 scalar_t__ daemon (int ,int ) ;
 int errno ;
 scalar_t__ login_tty (int) ;
 int open (char const*,int) ;
 int sleep (int) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
opentty(const char *tty, int flags)
{
 int failopenlogged = 0, i, saved_errno;

 while ((i = open(tty, flags)) == -1)
 {
  saved_errno = errno;
  if (!failopenlogged) {
   syslog(LOG_ERR, "open %s: %m", tty);
   failopenlogged = 1;
  }
  if (saved_errno == ENOENT)
   return 0;
  sleep(60);
 }
 if (login_tty(i) < 0) {
  if (daemon(0,0) < 0) {
   syslog(LOG_ERR,"daemon: %m");
   close(i);
   return 0;
  }
  if (login_tty(i) < 0) {
   syslog(LOG_ERR, "login_tty %s: %m", tty);
   close(i);
   return 0;
  }
 }
 return 1;
}
