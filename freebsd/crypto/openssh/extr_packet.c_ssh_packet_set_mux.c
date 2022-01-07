
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int mux; scalar_t__ rekeying; } ;



void
ssh_packet_set_mux(struct ssh *ssh)
{
 ssh->state->mux = 1;
 ssh->state->rekeying = 0;
}
