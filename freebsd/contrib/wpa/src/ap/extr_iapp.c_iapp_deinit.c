
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ip_mreqn {scalar_t__ imr_ifindex; TYPE_1__ imr_address; int imr_multiaddr; } ;
struct iapp_data {scalar_t__ udp_sock; scalar_t__ packet_sock; int multicast; } ;
typedef int mreq ;


 int INADDR_ANY ;
 int IP_DROP_MEMBERSHIP ;
 int MSG_INFO ;
 int SOL_IP ;
 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int errno ;
 int os_free (struct iapp_data*) ;
 int os_memset (struct ip_mreqn*,int ,int) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,struct ip_mreqn*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

void iapp_deinit(struct iapp_data *iapp)
{
 struct ip_mreqn mreq;

 if (iapp == ((void*)0))
  return;

 if (iapp->udp_sock >= 0) {
  os_memset(&mreq, 0, sizeof(mreq));
  mreq.imr_multiaddr = iapp->multicast;
  mreq.imr_address.s_addr = INADDR_ANY;
  mreq.imr_ifindex = 0;
  if (setsockopt(iapp->udp_sock, SOL_IP, IP_DROP_MEMBERSHIP,
          &mreq, sizeof(mreq)) < 0) {
   wpa_printf(MSG_INFO, "iapp_deinit - setsockopt[UDP,IP_DEL_MEMBERSHIP]: %s",
       strerror(errno));
  }

  eloop_unregister_read_sock(iapp->udp_sock);
  close(iapp->udp_sock);
 }
 if (iapp->packet_sock >= 0) {
  eloop_unregister_read_sock(iapp->packet_sock);
  close(iapp->packet_sock);
 }
 os_free(iapp);
}
