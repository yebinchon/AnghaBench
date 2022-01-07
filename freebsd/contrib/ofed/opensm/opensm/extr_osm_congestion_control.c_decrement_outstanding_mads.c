
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int sig_mads_on_wire_continue; int outstanding_mads_on_wire; int outstanding_mads_done_event; int outstanding_mads; } ;
typedef TYPE_1__ osm_congestion_control_t ;


 int cl_atomic_dec (int *) ;
 int cl_event_signal (int *) ;

__attribute__((used)) static inline void decrement_outstanding_mads(osm_congestion_control_t *p_cc)
{
 uint32_t outstanding;

 outstanding = cl_atomic_dec(&p_cc->outstanding_mads);
 if (!outstanding)
  cl_event_signal(&p_cc->outstanding_mads_done_event);

 cl_atomic_dec(&p_cc->outstanding_mads_on_wire);
 cl_event_signal(&p_cc->sig_mads_on_wire_continue);
}
