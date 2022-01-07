
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_name_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_PORT_SET ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int __AUDIT_LAUNCHD_LABEL ;
 int auditd_log_debug (char*) ;
 int auditd_log_err (char*) ;
 int control_port ;
 scalar_t__ host_set_audit_control_port (int ,int ) ;
 int lookup_machport (int ) ;
 int mach_host_self () ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 int mach_port_extract_right (int ,int ,int ,int *,int *) ;
 scalar_t__ mach_port_move_member (int ,int ,int ) ;
 int mach_task_self () ;
 int port_set ;
 int signal_port ;

__attribute__((used)) static int
mach_setup(int launchd_flag)
{
 mach_msg_type_name_t poly;




 if (mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_PORT_SET,
     &port_set) != KERN_SUCCESS) {
  auditd_log_err("Allocation of port set failed");
  return (-1);
 }





 if (mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE,
     &signal_port) != KERN_SUCCESS ||
     mach_port_move_member(mach_task_self(), signal_port, port_set) !=
     KERN_SUCCESS) {
  auditd_log_err("Allocation of signal port failed");
  return (-1);
 }




 if (launchd_flag) {



  if ((control_port = lookup_machport(__AUDIT_LAUNCHD_LABEL)) ==
      MACH_PORT_NULL || mach_port_move_member(mach_task_self(),
      control_port, port_set) != KERN_SUCCESS) {
   auditd_log_err("Cannot get Mach control port"
                            " via launchd");
   return (-1);
  } else
   auditd_log_debug("Mach control port registered"
       " via launchd");
 } else {



  if (mach_port_allocate(mach_task_self(),
      MACH_PORT_RIGHT_RECEIVE, &control_port) != KERN_SUCCESS ||
      mach_port_move_member(mach_task_self(), control_port,
      port_set) != KERN_SUCCESS)
   auditd_log_err("Allocation of trigger port failed");




  mach_port_extract_right(mach_task_self(), control_port,
      MACH_MSG_TYPE_MAKE_SEND, &control_port, &poly);




  if (host_set_audit_control_port(mach_host_self(),
      control_port) != KERN_SUCCESS) {
                        auditd_log_err("Cannot set Mach control port");
   return (-1);
  } else
   auditd_log_debug("Mach control port registered");
 }

 return (0);
}
