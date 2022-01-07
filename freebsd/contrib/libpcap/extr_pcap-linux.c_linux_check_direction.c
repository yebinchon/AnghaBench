
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_ll {scalar_t__ sll_pkttype; scalar_t__ sll_ifindex; scalar_t__ sll_protocol; } ;
struct pcap_linux {scalar_t__ lo_ifindex; } ;
struct TYPE_3__ {scalar_t__ direction; struct pcap_linux* priv; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ LINUX_SLL_P_CAN ;
 scalar_t__ LINUX_SLL_P_CANFD ;
 scalar_t__ PACKET_OUTGOING ;
 scalar_t__ PCAP_D_IN ;
 scalar_t__ PCAP_D_OUT ;

__attribute__((used)) static inline int
linux_check_direction(const pcap_t *handle, const struct sockaddr_ll *sll)
{
 struct pcap_linux *handlep = handle->priv;

 if (sll->sll_pkttype == PACKET_OUTGOING) {






  if (sll->sll_ifindex == handlep->lo_ifindex)
   return 0;
  if ((sll->sll_protocol == LINUX_SLL_P_CAN ||
       sll->sll_protocol == LINUX_SLL_P_CANFD) &&
       handle->direction != PCAP_D_OUT)
   return 0;




  if (handle->direction == PCAP_D_IN)
   return 0;
 } else {




  if (handle->direction == PCAP_D_OUT)
   return 0;
 }
 return 1;
}
