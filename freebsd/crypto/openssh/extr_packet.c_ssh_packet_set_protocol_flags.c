
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int remote_protocol_flags; } ;



void
ssh_packet_set_protocol_flags(struct ssh *ssh, u_int protocol_flags)
{
 ssh->state->remote_protocol_flags = protocol_flags;
}
