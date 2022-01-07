
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {size_t ostate; int self; } ;
typedef TYPE_1__ Channel ;


 size_t CHAN_OUTPUT_CLOSED ;
 int debug2 (char*,int ,int ,int ) ;
 int fatal (char*,size_t,size_t) ;
 int * ostates ;

__attribute__((used)) static void
chan_set_ostate(Channel *c, u_int next)
{
 if (c->ostate > CHAN_OUTPUT_CLOSED || next > CHAN_OUTPUT_CLOSED)
  fatal("chan_set_ostate: bad state %d -> %d", c->ostate, next);
 debug2("channel %d: output %s -> %s", c->self, ostates[c->ostate],
     ostates[next]);
 c->ostate = next;
}
