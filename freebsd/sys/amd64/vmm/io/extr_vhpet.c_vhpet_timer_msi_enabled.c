
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int const cap_config; } ;


 int HPET_TCAP_FSB_INT_DEL ;
 int HPET_TCNF_FSB_EN ;

__attribute__((used)) static __inline bool
vhpet_timer_msi_enabled(struct vhpet *vhpet, int n)
{
 const uint64_t msi_enable = HPET_TCAP_FSB_INT_DEL | HPET_TCNF_FSB_EN;

 if ((vhpet->timer[n].cap_config & msi_enable) == msi_enable)
  return (1);
 else
  return (0);
}
