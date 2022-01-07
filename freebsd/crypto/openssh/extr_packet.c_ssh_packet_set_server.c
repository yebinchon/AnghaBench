
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int server_side; } ;



void
ssh_packet_set_server(struct ssh *ssh)
{
 ssh->state->server_side = 1;
}
