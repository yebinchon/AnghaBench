
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int HANDLE ;


 int PacketGetReadEvent (int ) ;

__attribute__((used)) static HANDLE
pcap_getevent_npf(pcap_t *p)
{
 struct pcap_win *pw = p->priv;

 return (PacketGetReadEvent(pw->adapter));
}
