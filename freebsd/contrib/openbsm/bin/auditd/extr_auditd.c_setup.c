
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUD_STATE_INIT ;
 int audit_setup () ;
 int auditd_log_err (char*,...) ;
 scalar_t__ auditd_open_trigger (int ) ;
 int auditd_prevent_audit () ;
 int auditd_set_state (int ) ;
 int auditd_strerror (int) ;
 int fail_exit () ;
 int launchd_flag ;

__attribute__((used)) static void
setup(void)
{
 int err;

 if (auditd_open_trigger(launchd_flag) < 0) {
  auditd_log_err("Error opening trigger messaging mechanism");
  fail_exit();
 }
 err = auditd_prevent_audit();
 if (err) {
  auditd_log_err("auditd_prevent_audit() %s: %m",
      auditd_strerror(err));
  fail_exit();
 }




 auditd_set_state(AUD_STATE_INIT);





 if (!launchd_flag)
  audit_setup();
}
