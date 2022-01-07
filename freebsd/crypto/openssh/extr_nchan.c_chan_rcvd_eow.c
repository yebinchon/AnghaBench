
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_5__ {int istate; int self; } ;
typedef TYPE_1__ Channel ;


 int CHAN_INPUT_CLOSED ;

 int chan_set_istate (TYPE_1__*,int ) ;
 int chan_shutdown_read (struct ssh*,TYPE_1__*) ;
 int debug2 (char*,int ) ;

void
chan_rcvd_eow(struct ssh *ssh, Channel *c)
{
 debug2("channel %d: rcvd eow", c->self);
 switch (c->istate) {
 case 128:
  chan_shutdown_read(ssh, c);
  chan_set_istate(c, CHAN_INPUT_CLOSED);
  break;
 }
}
