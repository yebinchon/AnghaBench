
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PacketIsMonitorModeSupported (int ) ;

__attribute__((used)) static int
pcap_can_set_rfmon_npf(pcap_t *p)
{
 return (PacketIsMonitorModeSupported(p->opt.device) == 1);
}
