
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUE_audit_startup ;
 scalar_t__ auditd_config_controls () ;
 int auditd_gen_record (int ,int *) ;
 int auditd_log_debug (char*) ;
 int auditd_log_err (char*,...) ;
 int auditd_log_info (char*) ;
 int auditd_set_dist () ;
 int auditd_strerror (int) ;
 int do_trail_file () ;
 int fail_exit () ;

__attribute__((used)) static void
audit_setup(void)
{
 int err;


 err = auditd_set_dist();
 if (err) {
  auditd_log_err("auditd_set_dist() %s: %m",
      auditd_strerror(err));
 } else
  auditd_log_debug("Configured trail files distribution.");

 if (do_trail_file() == -1) {
  auditd_log_err("Error creating audit trail file");
  fail_exit();
 }


 err = auditd_gen_record(AUE_audit_startup, ((void*)0));
 if (err)
  auditd_log_err("auditd_gen_record(AUE_audit_startup) %s: %m",
      auditd_strerror(err));

 if (auditd_config_controls() == 0)
  auditd_log_info("Audit controls init successful");
 else
  auditd_log_err("Audit controls init failed");
}
