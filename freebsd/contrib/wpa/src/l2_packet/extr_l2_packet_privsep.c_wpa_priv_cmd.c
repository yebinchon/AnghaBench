
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct msghdr {int msg_iovlen; int msg_namelen; int * msg_name; struct iovec* msg_iov; } ;
struct l2_packet_data {int fd; int priv_addr; } ;
struct iovec {int* iov_base; int iov_len; } ;
typedef int msg ;
typedef int cmd ;


 int MSG_ERROR ;
 int errno ;
 int os_memset (struct msghdr*,int ,int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int wpa_priv_cmd(struct l2_packet_data *l2, int cmd,
   const void *data, size_t data_len)
{
 struct msghdr msg;
 struct iovec io[2];

 io[0].iov_base = &cmd;
 io[0].iov_len = sizeof(cmd);
 io[1].iov_base = (u8 *) data;
 io[1].iov_len = data_len;

 os_memset(&msg, 0, sizeof(msg));
 msg.msg_iov = io;
 msg.msg_iovlen = data ? 2 : 1;
 msg.msg_name = &l2->priv_addr;
 msg.msg_namelen = sizeof(l2->priv_addr);

 if (sendmsg(l2->fd, &msg, 0) < 0) {
  wpa_printf(MSG_ERROR, "L2: sendmsg(cmd): %s", strerror(errno));
  return -1;
 }

 return 0;
}
