
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_priv_interface {int fd; int drv_addr_len; int drv_addr; } ;
struct msghdr {int msg_iovlen; int msg_namelen; int * msg_name; struct iovec* msg_iov; } ;
struct iovec {int* iov_base; int iov_len; } ;
typedef int msg ;
typedef int event ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int PRIVSEP_EVENT_RX_EAPOL ;
 int errno ;
 int os_memset (struct msghdr*,int ,int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

void wpa_supplicant_rx_eapol(void *ctx, const u8 *src_addr,
        const u8 *buf, size_t len)
{
 struct wpa_priv_interface *iface = ctx;
 struct msghdr msg;
 struct iovec io[3];
 int event = PRIVSEP_EVENT_RX_EAPOL;

 wpa_printf(MSG_DEBUG, "RX EAPOL from driver");
 io[0].iov_base = &event;
 io[0].iov_len = sizeof(event);
 io[1].iov_base = (u8 *) src_addr;
 io[1].iov_len = ETH_ALEN;
 io[2].iov_base = (u8 *) buf;
 io[2].iov_len = len;

 os_memset(&msg, 0, sizeof(msg));
 msg.msg_iov = io;
 msg.msg_iovlen = 3;
 msg.msg_name = &iface->drv_addr;
 msg.msg_namelen = iface->drv_addr_len;

 if (sendmsg(iface->fd, &msg, 0) < 0)
  wpa_printf(MSG_ERROR, "sendmsg(wpas_socket): %s",
      strerror(errno));
}
