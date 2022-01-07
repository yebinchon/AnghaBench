
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDITD_PIDFILE ;
 scalar_t__ ENOENT ;
 int auditd_close_dirs () ;
 scalar_t__ auditd_close_trigger () ;
 int auditd_log_err (char*,...) ;
 int endac () ;
 scalar_t__ errno ;
 int unlink (int ) ;

__attribute__((used)) static int
close_misc(void)
{

 auditd_close_dirs();
 if (unlink(AUDITD_PIDFILE) == -1 && errno != ENOENT) {
  auditd_log_err("Couldn't remove %s: %m", AUDITD_PIDFILE);
  return (1);
 }
 endac();

 if (auditd_close_trigger() != 0) {
  auditd_log_err("Error closing trigger messaging mechanism");
  return (1);
 }
 return (0);
}
