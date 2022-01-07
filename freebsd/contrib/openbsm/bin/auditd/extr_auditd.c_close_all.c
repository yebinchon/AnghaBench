
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int TS ;


 int AUC_DISABLED ;
 int AUD_STATE_DISABLED ;
 int AUE_audit_shutdown ;
 int TIMESTAMP_LEN ;
 int audit_set_cond (int*) ;
 int audit_warn_postsigterm () ;
 int auditd_gen_record (int ,int *) ;
 int auditd_log_err (char*,...) ;
 int auditd_log_info (char*) ;
 int auditd_set_state (int ) ;
 int auditd_strerror (int) ;
 int close_lastfile (char*) ;
 scalar_t__ close_misc () ;
 int errno ;
 int free (int *) ;
 scalar_t__ getTSstr (int ,char*,int) ;
 int * lastfile ;
 int strerror (int ) ;

__attribute__((used)) static int
close_all(void)
{
 int err_ret = 0;
 char TS[TIMESTAMP_LEN + 1];
 int err;
 int cond;
 time_t tt;

 err = auditd_gen_record(AUE_audit_shutdown, ((void*)0));
 if (err)
  auditd_log_err("auditd_gen_record(AUE_audit_shutdown) %s: %m",
      auditd_strerror(err));


 cond = AUC_DISABLED;
 err_ret = audit_set_cond(&cond);
 if (err_ret != 0) {
  auditd_log_err("Disabling audit failed! : %s", strerror(errno));
  err_ret = 1;
 }




 auditd_set_state(AUD_STATE_DISABLED);

 if (getTSstr(tt, TS, sizeof(TS)) == 0)
  close_lastfile(TS);
 if (lastfile != ((void*)0))
  free(lastfile);

 err_ret += close_misc();

 if (err_ret) {
  auditd_log_err("Could not unregister");
  audit_warn_postsigterm();
 }

 auditd_log_info("Finished");
 return (err_ret);
}
