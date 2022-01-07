
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int grh_present; int traffic_class; int hop_limit; int flow_label; int ib_gid; } ;
struct ib_user_mad {TYPE_1__ addr; } ;
struct ib_mad_addr {int traffic_class; int hop_limit; scalar_t__ flow_label; int ib_gid; } ;


 int htobe32 (int ) ;

int umad_set_grh(void *umad, void *mad_addr)
{
 struct ib_user_mad *mad = umad;
 struct ib_mad_addr *addr = mad_addr;

 if (mad_addr) {
  mad->addr.grh_present = 1;
  mad->addr.ib_gid = addr->ib_gid;


  mad->addr.flow_label = htobe32((uint32_t)addr->flow_label);
  mad->addr.hop_limit = addr->hop_limit;
  mad->addr.traffic_class = addr->traffic_class;
 } else
  mad->addr.grh_present = 0;
 return 0;
}
