
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_priv_l2 {size_t idx; struct wpa_priv_interface* parent; } ;
struct wpa_priv_interface {int fd; int * l2_addr_len; int * l2_addr; } ;
struct msghdr {int msg_iovlen; int msg_namelen; int * msg_name; struct iovec* msg_iov; } ;
struct iovec {size_t iov_len; int * iov_base; } ;
typedef int msg ;


 size_t ETH_ALEN ;
 int MSG_ERROR ;
 int errno ;
 int os_memset (struct msghdr*,int ,int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void wpa_priv_l2_rx(void *ctx, const u8 *src_addr, const u8 *buf,
      size_t len)
{
 struct wpa_priv_l2 *l2_ctx = ctx;
 struct wpa_priv_interface *iface = l2_ctx->parent;
 struct msghdr msg;
 struct iovec io[2];

 io[0].iov_base = (u8 *) src_addr;
 io[0].iov_len = ETH_ALEN;
 io[1].iov_base = (u8 *) buf;
 io[1].iov_len = len;

 os_memset(&msg, 0, sizeof(msg));
 msg.msg_iov = io;
 msg.msg_iovlen = 2;
 msg.msg_name = &iface->l2_addr[l2_ctx->idx];
 msg.msg_namelen = iface->l2_addr_len[l2_ctx->idx];

 if (sendmsg(iface->fd, &msg, 0) < 0) {
  wpa_printf(MSG_ERROR, "sendmsg(l2 rx): %s", strerror(errno));
 }
}
