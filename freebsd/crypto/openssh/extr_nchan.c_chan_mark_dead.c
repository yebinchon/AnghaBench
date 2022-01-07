
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ Channel ;


 int SSH_CHANNEL_ZOMBIE ;

void
chan_mark_dead(struct ssh *ssh, Channel *c)
{
 c->type = SSH_CHANNEL_ZOMBIE;
}
