
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISend ;
 int SYNCHing ;
 int TELOPT_BINARY ;
 int TELOPT_LINEMODE ;
 int TELOPT_SGA ;
 scalar_t__ flushline ;
 int kludgelinemode ;
 scalar_t__ my_want_state_is_do (int ) ;
 scalar_t__ my_want_state_is_will (int ) ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int netiring ;
 int netoring ;
 int process_rings (int,int,int,int,int,int) ;
 int ring_empty_count (int *) ;
 int ring_full_count (int *) ;
 scalar_t__ scheduler_lockout_tty ;
 int telrcv () ;
 int telsnd () ;
 int ttyiring ;
 int ttyoring ;

int
Scheduler(int block)
{





    int returnValue;
    int netin, netout, netex, ttyin, ttyout;



    netout = ring_full_count(&netoring) &&
     (flushline ||
  (my_want_state_is_wont(TELOPT_LINEMODE)



  ) ||
   my_want_state_is_will(TELOPT_BINARY));
    ttyout = ring_full_count(&ttyoring);

    ttyin = ring_empty_count(&ttyiring);

    netin = !ISend && ring_empty_count(&netiring);

    netex = !SYNCHing;



    if (scheduler_lockout_tty) {
        ttyin = ttyout = 0;
    }



    returnValue = process_rings(netin, netout, netex, ttyin, ttyout, !block);



    if (ring_full_count(&ttyiring)) {
     returnValue |= telsnd();
    }

    if (ring_full_count(&netiring)) {
 returnValue |= telrcv();
    }
    return returnValue;
}
