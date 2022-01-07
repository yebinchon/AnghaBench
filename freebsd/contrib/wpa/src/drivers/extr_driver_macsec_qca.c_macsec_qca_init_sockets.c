
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ sa_family; int sa_data; } ;
struct sockaddr_ll {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_2__ ifr_hwaddr; int ifr_name; int sll_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ sock; int ifname; int ctx; } ;
struct macsec_qca_data {TYPE_1__ common; } ;
struct ifreq {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_2__ ifr_hwaddr; int ifr_name; int sll_family; } ;
typedef int ifr ;
typedef int addr ;


 int AF_PACKET ;
 scalar_t__ ARPHRD_ETHER ;
 int ETH_ALEN ;
 int ETH_P_PAE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int PF_PACKET ;
 int SIOCGIFHWADDR ;
 int SIOCGIFINDEX ;
 int SOCK_RAW ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ eloop_register_read_sock (scalar_t__,int ,int ,int *) ;
 int errno ;
 int htons (int ) ;
 scalar_t__ ioctl (scalar_t__,int ,struct sockaddr_ll*) ;
 int macsec_qca_handle_read ;
 int os_memcpy (int *,int ,int ) ;
 int os_memset (struct sockaddr_ll*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int pae_group_addr ;
 scalar_t__ socket (int ,int ,int ) ;
 scalar_t__ strerror (int ) ;
 scalar_t__ wired_multicast_membership (scalar_t__,scalar_t__,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int macsec_qca_init_sockets(struct macsec_qca_data *drv, u8 *own_addr)
{

 struct ifreq ifr;
 struct sockaddr_ll addr;

 drv->common.sock = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_PAE));
 if (drv->common.sock < 0) {
  wpa_printf(MSG_ERROR, "socket[PF_PACKET,SOCK_RAW]: %s",
      strerror(errno));
  return -1;
 }

 if (eloop_register_read_sock(drv->common.sock, macsec_qca_handle_read,
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

 if (bind(drv->common.sock, (struct sockaddr *) &addr,
   sizeof(addr)) < 0) {
  wpa_printf(MSG_ERROR, "macsec_qca: bind: %s", strerror(errno));
  return -1;
 }


 if (wired_multicast_membership(drv->common.sock, ifr.ifr_ifindex,
           pae_group_addr, 1) < 0) {
  wpa_printf(MSG_ERROR,
   "macsec_qca_init_sockets: Failed to add multicast group membership");
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

 return 0;



}
