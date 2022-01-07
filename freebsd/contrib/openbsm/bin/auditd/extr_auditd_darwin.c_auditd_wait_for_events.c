
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int MACH_MSG_OPTION_NONE ;
 int MAX_MSG_SIZE ;
 int auditd_combined_server ;
 int mach_msg_server (int ,int ,int ,int ) ;
 int port_set ;

void
auditd_wait_for_events(void)
{
 kern_return_t result;




 result = mach_msg_server(auditd_combined_server, MAX_MSG_SIZE,
     port_set, MACH_MSG_OPTION_NONE);
}
