
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int BOOLEAN ;


 int PacketIsDumpEnded (int ,int ) ;

__attribute__((used)) static int
pcap_live_dump_ended_npf(pcap_t *p, int sync)
{
 struct pcap_win *pw = p->priv;

 return (PacketIsDumpEnded(pw->adapter, (BOOLEAN)sync));
}
