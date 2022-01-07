
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int TS ;


 int ADE_ACTL ;
 int ADE_NOERR ;
 scalar_t__ AUD_STATE_ENABLED ;
 int TIMESTAMP_LEN ;
 int audit_review_gid ;
 int audit_warn_getacdir ;
 scalar_t__ auditd_get_state () ;
 int auditd_log_debug (char*) ;
 int auditd_log_err (char*,char*,...) ;
 int auditd_log_notice (char*,char*) ;
 scalar_t__ auditd_new_curlink (char*) ;
 int auditd_set_state (scalar_t__) ;
 int auditd_strerror (int) ;
 int auditd_swap_trail (char*,char**,int ,int ) ;
 int close_lastfile (char*) ;
 scalar_t__ getTSstr (int ,char*,int) ;
 char* lastfile ;
 scalar_t__ strncmp (char*,char*,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
swap_audit_file(void)
{
 int err;
 char *newfile, *name;
 char TS[TIMESTAMP_LEN + 1];
 time_t tt;

 if (getTSstr(tt, TS, sizeof(TS)) != 0)
  return (-1);
 if (lastfile == ((void*)0)) {
  name = ((void*)0);
 } else {
  name = strrchr(lastfile, '/');
  if (name != ((void*)0))
   name++;
 }
 if (name != ((void*)0) && strncmp(name, TS, TIMESTAMP_LEN) == 0) {
  auditd_log_debug("Not ready to terminate trail file yet.");
  return (0);
 }
 err = auditd_swap_trail(TS, &newfile, audit_review_gid,
     audit_warn_getacdir);
 if (err != ADE_NOERR) {
  auditd_log_err("%s: %m", auditd_strerror(err));
  if (err != ADE_ACTL)
   return (-1);
 }





 if (auditd_get_state() == AUD_STATE_ENABLED)
  close_lastfile(TS);






 auditd_set_state(AUD_STATE_ENABLED);




 if (auditd_new_curlink(newfile) != 0)
  auditd_log_err("auditd_new_curlink(\"%s\") failed: %s: %m",
      newfile, auditd_strerror(err));

 lastfile = newfile;
 auditd_log_notice("New audit file is %s", newfile);

 return (0);
}
