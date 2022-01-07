
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int keep_alive_timeouts; } ;



void
ssh_packet_set_alive_timeouts(struct ssh *ssh, int ka)
{
 ssh->state->keep_alive_timeouts = ka;
}
