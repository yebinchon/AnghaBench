
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADE_HARDLIM ;
 int ADE_SOFTLIM ;
 int audit_warn_allhard () ;
 int audit_warn_allsoft () ;
 int audit_warn_expired ;
 int audit_warn_hard ;
 int audit_warn_soft ;
 int auditd_expire_trails (int ) ;
 int auditd_log_err (char*,int ) ;
 int auditd_read_dirs (int ,int ) ;
 int auditd_strerror (int) ;
 int swap_audit_file () ;

__attribute__((used)) static int
do_trail_file(void)
{
 int err;




 err = auditd_read_dirs(audit_warn_soft, audit_warn_hard);
 if (err) {
  auditd_log_err("auditd_read_dirs(): %s",
      auditd_strerror(err));
  if (err == ADE_HARDLIM)
   audit_warn_allhard();
  if (err != ADE_SOFTLIM)
   return (-1);
  else
   audit_warn_allsoft();

 }




 if (swap_audit_file() == -1) {





  return (-1);
 }




 err = auditd_expire_trails(audit_warn_expired);
 if (err)
  auditd_log_err("auditd_expire_trails(): %s",
      auditd_strerror(err));

 return (0);
}
