
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_4__ {int msgh_id; int msgh_bits; int msgh_local_port; int msgh_remote_port; } ;
struct TYPE_3__ {TYPE_2__ header; } ;
typedef TYPE_1__ mach_msg_empty_send_t ;


 int MACH_MSGH_BITS (int ,int ) ;
 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_PORT_NULL ;
 int MACH_SEND_MSG ;
 int MACH_SEND_TIMEOUT ;
 int mach_msg (TYPE_2__*,int,int,int ,int ,int ,int ) ;
 int signal_port ;

void
auditd_relay_signal(int signal)
{
 mach_msg_empty_send_t msg;

 msg.header.msgh_id = signal;
 msg.header.msgh_remote_port = signal_port;
 msg.header.msgh_local_port = MACH_PORT_NULL;
 msg.header.msgh_bits = MACH_MSGH_BITS(MACH_MSG_TYPE_MAKE_SEND, 0);
 mach_msg(&(msg.header), MACH_SEND_MSG|MACH_SEND_TIMEOUT, sizeof(msg),
     0, MACH_PORT_NULL, MACH_MSG_TIMEOUT_NONE, MACH_PORT_NULL);
}
