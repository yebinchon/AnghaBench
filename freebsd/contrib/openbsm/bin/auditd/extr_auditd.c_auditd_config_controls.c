
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADE_PARSE ;
 int auditd_log_debug (char*,...) ;
 int auditd_log_err (char*,...) ;
 int auditd_log_notice (char*) ;
 int auditd_set_evcmap () ;
 int auditd_set_fsize () ;
 int auditd_set_host () ;
 int auditd_set_minfree () ;
 int auditd_set_namask () ;
 int auditd_set_policy () ;
 int auditd_set_qsize () ;
 int auditd_strerror (int) ;

int
auditd_config_controls(void)
{
 int cnt, err;
 int ret = 0;




 cnt = auditd_set_evcmap();
 if (cnt < 0) {
  auditd_log_err("auditd_set_evcmap() failed: %m");
  ret = -1;
 } else if (cnt == 0) {
  auditd_log_err("No events to class mappings registered.");
  ret = -1;
 } else
  auditd_log_debug("Registered %d event to class mappings.", cnt);




 err = auditd_set_namask();
 if (err) {
  auditd_log_err("auditd_set_namask() %s: %m",
      auditd_strerror(err));
  ret = -1;
 } else
  auditd_log_debug("Registered non-attributable event mask.");




 err = auditd_set_policy();
 if (err) {
  auditd_log_err("auditd_set_policy() %s: %m",
      auditd_strerror(err));
  ret = -1;
 } else
  auditd_log_debug("Set audit policy in kernel.");




 err = auditd_set_fsize();
 if (err) {
  auditd_log_err("audit_set_fsize() %s: %m",
      auditd_strerror(err));
  ret = -1;
 } else
  auditd_log_debug("Set audit trail size in kernel.");




 err = auditd_set_qsize();
 if (err) {
  auditd_log_err("audit_set_qsize() %s: %m",
      auditd_strerror(err));
  ret = -1;
 } else
  auditd_log_debug("Set audit trail queue in kernel.");





 err = auditd_set_minfree();
 if (err) {
  auditd_log_err("auditd_set_minfree() %s: %m",
      auditd_strerror(err));
  ret = -1;
 } else
  auditd_log_debug(
      "Set audit trail min free percent in kernel.");




 err = auditd_set_host();
 if (err) {
  if (err == ADE_PARSE) {
   auditd_log_notice(
       "audit_control(5) may be missing 'host:' field");
  } else {
   auditd_log_err("auditd_set_host() %s: %m",
       auditd_strerror(err));
   ret = -1;
  }
 } else
  auditd_log_debug(
      "Set audit host address information in kernel.");

 return (ret);
}
