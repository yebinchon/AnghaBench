
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ input; } ;



void *
ssh_packet_get_input(struct ssh *ssh)
{
 return (void *)ssh->state->input;
}
