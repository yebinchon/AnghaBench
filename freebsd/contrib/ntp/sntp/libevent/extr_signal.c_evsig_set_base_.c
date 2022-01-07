
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ev_signal_pair; int ev_n_signals_added; } ;
struct event_base {TYPE_1__ sig; } ;


 int EVSIGBASE_LOCK () ;
 int EVSIGBASE_UNLOCK () ;
 struct event_base* evsig_base ;
 int evsig_base_fd ;
 int evsig_base_n_signals_added ;

void
evsig_set_base_(struct event_base *base)
{
 EVSIGBASE_LOCK();
 evsig_base = base;
 evsig_base_n_signals_added = base->sig.ev_n_signals_added;
 evsig_base_fd = base->sig.ev_signal_pair[1];
 EVSIGBASE_UNLOCK();
}
