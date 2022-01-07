
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SLL_BROADCAST ;
 int LINUX_SLL_HOST ;
 int LINUX_SLL_MULTICAST ;
 int LINUX_SLL_OTHERHOST ;
 int LINUX_SLL_OUTGOING ;





 short htons (int ) ;

__attribute__((used)) static short int
map_packet_type_to_sll_type(short int sll_pkttype)
{
 switch (sll_pkttype) {

 case 131:
  return htons(LINUX_SLL_HOST);

 case 132:
  return htons(LINUX_SLL_BROADCAST);

 case 130:
  return htons(LINUX_SLL_MULTICAST);

 case 129:
  return htons(LINUX_SLL_OTHERHOST);

 case 128:
  return htons(LINUX_SLL_OUTGOING);

 default:
  return -1;
 }
}
