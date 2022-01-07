
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int connection_out; } ;



int
ssh_packet_get_connection_out(struct ssh *ssh)
{
 return ssh->state->connection_out;
}
