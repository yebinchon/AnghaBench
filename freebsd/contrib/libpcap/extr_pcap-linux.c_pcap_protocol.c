
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int ETH_P_ALL ;
 int htons (int) ;

__attribute__((used)) static int pcap_protocol(pcap_t *handle)
{
 int protocol;

 protocol = handle->opt.protocol;
 if (protocol == 0)
  protocol = ETH_P_ALL;

 return htons(protocol);
}
