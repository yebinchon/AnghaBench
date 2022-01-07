
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {scalar_t__ type; int username; int line; int hostname; } ;


 scalar_t__ LTYPE_LOGIN ;
 scalar_t__ LTYPE_LOGOUT ;
 int audit_session_close (struct logininfo*) ;
 int audit_session_open (struct logininfo*) ;
 scalar_t__ geteuid () ;
 int lastlog_write_entry (struct logininfo*) ;
 int login_set_current_time (struct logininfo*) ;
 int loginmsg ;
 int logit (char*,...) ;
 int sys_auth_record_login (int ,int ,int ,int *) ;
 int syslogin_write_entry (struct logininfo*) ;
 int utmp_write_entry (struct logininfo*) ;
 int utmpx_write_entry (struct logininfo*) ;
 int wtmp_write_entry (struct logininfo*) ;
 int wtmpx_write_entry (struct logininfo*) ;

int
login_write(struct logininfo *li)
{

 if (geteuid() != 0) {
  logit("Attempt to write login records by non-root user (aborting)");
  return (1);
 }



 login_set_current_time(li);
 return (0);
}
