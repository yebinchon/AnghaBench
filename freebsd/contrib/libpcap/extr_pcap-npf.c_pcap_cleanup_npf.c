
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_win {scalar_t__ rfmon_selfstart; int * adapter; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_6__ {TYPE_1__ opt; struct pcap_win* priv; } ;
typedef TYPE_2__ pcap_t ;


 int PacketCloseAdapter (int *) ;
 int PacketSetMonitorMode (int ,int ) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;

__attribute__((used)) static void
pcap_cleanup_npf(pcap_t *p)
{
 struct pcap_win *pw = p->priv;

 if (pw->adapter != ((void*)0)) {
  PacketCloseAdapter(pw->adapter);
  pw->adapter = ((void*)0);
 }
 if (pw->rfmon_selfstart)
 {
  PacketSetMonitorMode(p->opt.device, 0);
 }
 pcap_cleanup_live_common(p);
}
