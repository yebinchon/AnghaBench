
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUD_STATE_DISABLED ;
 int AUD_STATE_ENABLED ;
 int AUD_STATE_INIT ;
 int auditd_log_notice (char*) ;
 int auditing_state ;
 int init_audit_state () ;

void
auditd_set_state(int state)
{
 int old_auditing_state = auditing_state;

 if (state == AUD_STATE_INIT)
  init_audit_state();
 else
  auditing_state = state;

 if (auditing_state != old_auditing_state) {
  if (auditing_state == AUD_STATE_ENABLED)
   auditd_log_notice("Auditing enabled");
  if (auditing_state == AUD_STATE_DISABLED)
   auditd_log_notice("Auditing disabled");
 }
}
