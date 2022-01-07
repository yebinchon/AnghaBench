
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signal_mask; int signal_lock; int signal_event; } ;
typedef TYPE_1__ osm_sm_t ;
typedef int osm_signal_t ;


 int cl_event_signal (int *) ;
 int cl_spinlock_acquire (int *) ;
 int cl_spinlock_release (int *) ;

void osm_sm_signal(osm_sm_t * p_sm, osm_signal_t signal)
{
 cl_spinlock_acquire(&p_sm->signal_lock);
 p_sm->signal_mask |= 1 << signal;
 cl_event_signal(&p_sm->signal_event);
 cl_spinlock_release(&p_sm->signal_lock);
}
