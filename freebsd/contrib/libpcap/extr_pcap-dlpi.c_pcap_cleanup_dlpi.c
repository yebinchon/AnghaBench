
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_dlpi {int send_fd; } ;
struct TYPE_4__ {struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;


 int close (int) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;

__attribute__((used)) static void
pcap_cleanup_dlpi(pcap_t *p)
{
 pcap_cleanup_live_common(p);
}
