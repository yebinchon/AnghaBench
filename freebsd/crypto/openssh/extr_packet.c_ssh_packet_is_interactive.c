
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int interactive_mode; } ;



int
ssh_packet_is_interactive(struct ssh *ssh)
{
 return ssh->state->interactive_mode;
}
