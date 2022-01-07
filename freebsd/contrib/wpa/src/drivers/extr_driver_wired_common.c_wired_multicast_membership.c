
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct packet_mreq {int mr_ifindex; int mr_address; int mr_alen; int mr_type; } ;
typedef int mreq ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int PACKET_ADD_MEMBERSHIP ;
 int PACKET_DROP_MEMBERSHIP ;
 int PACKET_MR_MULTICAST ;
 int SOL_PACKET ;
 int errno ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct packet_mreq*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,struct packet_mreq*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

int wired_multicast_membership(int sock, int ifindex, const u8 *addr, int add)
{

 struct packet_mreq mreq;

 if (sock < 0)
  return -1;

 os_memset(&mreq, 0, sizeof(mreq));
 mreq.mr_ifindex = ifindex;
 mreq.mr_type = PACKET_MR_MULTICAST;
 mreq.mr_alen = ETH_ALEN;
 os_memcpy(mreq.mr_address, addr, ETH_ALEN);

 if (setsockopt(sock, SOL_PACKET,
         add ? PACKET_ADD_MEMBERSHIP : PACKET_DROP_MEMBERSHIP,
         &mreq, sizeof(mreq)) < 0) {
  wpa_printf(MSG_ERROR, "setsockopt: %s", strerror(errno));
  return -1;
 }
 return 0;



}
