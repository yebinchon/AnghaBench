
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {TYPE_2__* kex; TYPE_1__* state; } ;
struct TYPE_4__ {scalar_t__ done; } ;
struct TYPE_3__ {scalar_t__ rekeying; } ;



int
ssh_packet_is_rekeying(struct ssh *ssh)
{
 return ssh->state->rekeying ||
     (ssh->kex != ((void*)0) && ssh->kex->done == 0);
}
