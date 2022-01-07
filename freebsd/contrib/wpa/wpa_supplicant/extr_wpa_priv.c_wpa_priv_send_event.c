
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


 int MSG_ERROR ;
 int errno ;
 int os_memset (struct msghdr*,int ,int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int wpa_priv_send_event(struct wpa_priv_interface *iface, int event,
          const void *data, size_t data_len)
{
 struct msghdr msg;
 struct iovec io[2];

 io[0].iov_base = &event;
 io[0].iov_len = sizeof(event);
 io[1].iov_base = (u8 *) data;
 io[1].iov_len = data_len;

 os_memset(&msg, 0, sizeof(msg));
 msg.msg_iov = io;
 msg.msg_iovlen = data ? 2 : 1;
 msg.msg_name = &iface->drv_addr;
 msg.msg_namelen = iface->drv_addr_len;

 if (sendmsg(iface->fd, &msg, 0) < 0) {
  wpa_printf(MSG_ERROR, "sendmsg(wpas_socket): %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
