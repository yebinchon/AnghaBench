
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AUD_STATE_INIT ;
 int __BSM_INTERNAL_NOTIFY_KEY ;
 scalar_t__ auditing_state ;
 int init_audit_state () ;
 int notify_post (int ) ;

int
auditd_get_state(void)
{

 if (auditing_state == AUD_STATE_INIT) {
  init_audit_state();
  notify_post(__BSM_INTERNAL_NOTIFY_KEY);
 }

 return (auditing_state);
}
