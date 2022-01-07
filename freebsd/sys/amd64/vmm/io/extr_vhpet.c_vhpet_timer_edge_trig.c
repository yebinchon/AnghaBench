
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int cap_config; } ;


 int HPET_TCNF_INT_TYPE ;
 int KASSERT (int,char*) ;
 int vhpet_timer_msi_enabled (struct vhpet*,int) ;

__attribute__((used)) static __inline bool
vhpet_timer_edge_trig(struct vhpet *vhpet, int n)
{

 KASSERT(!vhpet_timer_msi_enabled(vhpet, n), ("vhpet_timer_edge_trig: "
     "timer %d is using MSI", n));

 if ((vhpet->timer[n].cap_config & HPET_TCNF_INT_TYPE) == 0)
  return (1);
 else
  return (0);
}
