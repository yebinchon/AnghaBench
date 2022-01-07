
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {size_t istate; int self; } ;
typedef TYPE_1__ Channel ;


 size_t CHAN_INPUT_CLOSED ;
 int debug2 (char*,int ,int ,int ) ;
 int fatal (char*,size_t,size_t) ;
 int * istates ;

__attribute__((used)) static void
chan_set_istate(Channel *c, u_int next)
{
 if (c->istate > CHAN_INPUT_CLOSED || next > CHAN_INPUT_CLOSED)
  fatal("chan_set_istate: bad state %d -> %d", c->istate, next);
 debug2("channel %d: input %s -> %s", c->self, istates[c->istate],
     istates[next]);
 c->istate = next;
}
