
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ sock; int ifname; int ctx; } ;
struct wpa_driver_wired_data {scalar_t__ dhcp_sock; TYPE_4__ common; } ;
struct TYPE_7__ {int ifrn_name; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; int sa_data; } ;
struct sockaddr_ll {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int sin_port; int sin_family; TYPE_1__ ifr_hwaddr; int ifr_name; int sll_family; } ;
struct sockaddr_in {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int sin_port; int sin_family; TYPE_1__ ifr_hwaddr; int ifr_name; int sll_family; } ;
struct sockaddr {int dummy; } ;
struct ifreq {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int sin_port; int sin_family; TYPE_1__ ifr_hwaddr; int ifr_name; int sll_family; } ;
typedef int n ;
typedef int ifr ;
typedef int addr2 ;
typedef int addr ;


 int AF_INET ;
 int AF_PACKET ;
 scalar_t__ ARPHRD_ETHER ;
 int ETH_ALEN ;
 int ETH_P_PAE ;
 int IFNAMSIZ ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int PF_INET ;
 int PF_PACKET ;
 int SIOCGIFHWADDR ;
 int SIOCGIFINDEX ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int SO_BROADCAST ;
 int SO_REUSEADDR ;
 int bind (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ eloop_register_read_sock (scalar_t__,int ,int ,int *) ;
 int errno ;
 int handle_dhcp ;
 int handle_read ;
 int htons (int) ;
 scalar_t__ ioctl (scalar_t__,int ,struct sockaddr_ll*) ;
 int os_memcpy (int *,int ,int ) ;
 int os_memset (struct sockaddr_ll*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int pae_group_addr ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;
 void* socket (int ,int ,int ) ;
 scalar_t__ strerror (int ) ;
 scalar_t__ wired_multicast_membership (scalar_t__,scalar_t__,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wired_init_sockets(struct wpa_driver_wired_data *drv, u8 *own_addr)
{

 struct ifreq ifr;
 struct sockaddr_ll addr;
 struct sockaddr_in addr2;
 int n = 1;

 drv->common.sock = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_PAE));
 if (drv->common.sock < 0) {
  wpa_printf(MSG_ERROR, "socket[PF_PACKET,SOCK_RAW]: %s",
      strerror(errno));
  return -1;
 }

 if (eloop_register_read_sock(drv->common.sock, handle_read,
         drv->common.ctx, ((void*)0))) {
  wpa_printf(MSG_INFO, "Could not register read socket");
  return -1;
 }

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
 if (ioctl(drv->common.sock, SIOCGIFINDEX, &ifr) != 0) {
  wpa_printf(MSG_ERROR, "ioctl(SIOCGIFINDEX): %s",
      strerror(errno));
  return -1;
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sll_family = AF_PACKET;
 addr.sll_ifindex = ifr.ifr_ifindex;
 wpa_printf(MSG_DEBUG, "Opening raw packet socket for ifindex %d",
     addr.sll_ifindex);

 if (bind(drv->common.sock, (struct sockaddr *) &addr, sizeof(addr)) < 0)
 {
  wpa_printf(MSG_ERROR, "bind: %s", strerror(errno));
  return -1;
 }


 if (wired_multicast_membership(drv->common.sock, ifr.ifr_ifindex,
           pae_group_addr, 1) < 0) {
  wpa_printf(MSG_ERROR, "wired: Failed to add multicast group "
      "membership");
  return -1;
 }

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
 if (ioctl(drv->common.sock, SIOCGIFHWADDR, &ifr) != 0) {
  wpa_printf(MSG_ERROR, "ioctl(SIOCGIFHWADDR): %s",
      strerror(errno));
  return -1;
 }

 if (ifr.ifr_hwaddr.sa_family != ARPHRD_ETHER) {
  wpa_printf(MSG_INFO, "Invalid HW-addr family 0x%04x",
      ifr.ifr_hwaddr.sa_family);
  return -1;
 }
 os_memcpy(own_addr, ifr.ifr_hwaddr.sa_data, ETH_ALEN);


 if ((drv->dhcp_sock = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0) {
  wpa_printf(MSG_ERROR, "socket call failed for dhcp: %s",
      strerror(errno));
  return -1;
 }

 if (eloop_register_read_sock(drv->dhcp_sock, handle_dhcp,
         drv->common.ctx, ((void*)0))) {
  wpa_printf(MSG_INFO, "Could not register read socket");
  return -1;
 }

 os_memset(&addr2, 0, sizeof(addr2));
 addr2.sin_family = AF_INET;
 addr2.sin_port = htons(67);
 addr2.sin_addr.s_addr = INADDR_ANY;

 if (setsockopt(drv->dhcp_sock, SOL_SOCKET, SO_REUSEADDR, (char *) &n,
         sizeof(n)) == -1) {
  wpa_printf(MSG_ERROR, "setsockopt[SOL_SOCKET,SO_REUSEADDR]: %s",
      strerror(errno));
  return -1;
 }
 if (setsockopt(drv->dhcp_sock, SOL_SOCKET, SO_BROADCAST, (char *) &n,
         sizeof(n)) == -1) {
  wpa_printf(MSG_ERROR, "setsockopt[SOL_SOCKET,SO_BROADCAST]: %s",
      strerror(errno));
  return -1;
 }

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_ifrn.ifrn_name, drv->common.ifname, IFNAMSIZ);
 if (setsockopt(drv->dhcp_sock, SOL_SOCKET, SO_BINDTODEVICE,
         (char *) &ifr, sizeof(ifr)) < 0) {
  wpa_printf(MSG_ERROR,
      "setsockopt[SOL_SOCKET,SO_BINDTODEVICE]: %s",
      strerror(errno));
  return -1;
 }

 if (bind(drv->dhcp_sock, (struct sockaddr *) &addr2,
   sizeof(struct sockaddr)) == -1) {
  wpa_printf(MSG_ERROR, "bind: %s", strerror(errno));
  return -1;
 }

 return 0;



}
