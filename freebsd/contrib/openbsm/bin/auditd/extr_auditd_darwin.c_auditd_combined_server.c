
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mach_port_t ;
struct TYPE_8__ {scalar_t__ msgh_local_port; int msgh_id; } ;
typedef TYPE_1__ mach_msg_header_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;




 scalar_t__ TRUE ;
 int alarm (scalar_t__) ;
 scalar_t__ audit_triggers_server (TYPE_1__*,TYPE_1__*) ;
 int auditd_config_controls () ;
 scalar_t__ auditd_control_server (TYPE_1__*,TYPE_1__*) ;
 int auditd_log_info (char*,scalar_t__) ;
 int auditd_reap_children () ;
 int auditd_terminate () ;
 scalar_t__ control_port ;
 scalar_t__ max_idletime ;
 scalar_t__ signal_port ;

__attribute__((used)) static boolean_t
auditd_combined_server(mach_msg_header_t *InHeadP, mach_msg_header_t *OutHeadP)
{
 mach_port_t local_port = InHeadP->msgh_local_port;


 if (max_idletime)
  alarm(max_idletime);

 if (local_port == signal_port) {
  int signo = InHeadP->msgh_id;

  switch(signo) {
  case 128:
  case 131:
   auditd_terminate();


  case 130:
   auditd_reap_children();
   return (TRUE);

  case 129:
   auditd_config_controls();
   return (TRUE);

  default:
   auditd_log_info("Received signal %d", signo);
   return (TRUE);
  }
 } else if (local_port == control_port) {
  boolean_t result;

  result = audit_triggers_server(InHeadP, OutHeadP);
  if (!result)
   result = auditd_control_server(InHeadP, OutHeadP);
   return (result);
 }
 auditd_log_info("Recevied msg on bad port 0x%x.", local_port);
 return (FALSE);
}
