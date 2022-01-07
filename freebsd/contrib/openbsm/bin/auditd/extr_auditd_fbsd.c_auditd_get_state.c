
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AUD_STATE_INIT ;
 scalar_t__ auditing_state ;
 int init_audit_state () ;

int
auditd_get_state(void)
{

 if (auditing_state == AUD_STATE_INIT)
  init_audit_state();

 return (auditing_state);
}
