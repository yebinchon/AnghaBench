
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int cap_config; } ;


 int HPET_TCNF_INT_ENB ;

__attribute__((used)) static __inline bool
vhpet_timer_interrupt_enabled(struct vhpet *vhpet, int n)
{

 return ((vhpet->timer[n].cap_config & HPET_TCNF_INT_ENB) != 0);
}
