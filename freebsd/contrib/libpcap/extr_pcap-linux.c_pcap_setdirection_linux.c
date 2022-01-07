
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_linux {int sock_packet; } ;
struct TYPE_3__ {int errbuf; int direction; struct pcap_linux* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_direction_t ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (int ,int ,char*) ;

__attribute__((used)) static int
pcap_setdirection_linux(pcap_t *handle, pcap_direction_t d)
{
 pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
     "Setting direction is not supported on SOCK_PACKET sockets");
 return -1;
}
