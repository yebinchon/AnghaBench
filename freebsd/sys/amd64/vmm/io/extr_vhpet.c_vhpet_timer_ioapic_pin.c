
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int cap_config; } ;


 int HPET_TCNF_INT_ROUTE ;
 scalar_t__ vhpet_timer_msi_enabled (struct vhpet*,int) ;

__attribute__((used)) static __inline int
vhpet_timer_ioapic_pin(struct vhpet *vhpet, int n)
{




 if (vhpet_timer_msi_enabled(vhpet, n))
  return (0);

 return ((vhpet->timer[n].cap_config & HPET_TCNF_INT_ROUTE) >> 9);
}
