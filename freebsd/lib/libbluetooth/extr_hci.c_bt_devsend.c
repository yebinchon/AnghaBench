
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct iovec {int iov_len; TYPE_1__* iov_base; } ;
struct TYPE_2__ {size_t length; int opcode; int type; } ;
typedef TYPE_1__ ng_hci_cmd_pkt_t ;
typedef int h ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 int NG_HCI_CMD_PKT ;
 size_t UINT8_MAX ;
 scalar_t__ errno ;
 int htole16 (int ) ;
 scalar_t__ writev (int,struct iovec*,int) ;

int
bt_devsend(int s, uint16_t opcode, void *param, size_t plen)
{
 ng_hci_cmd_pkt_t h;
 struct iovec iv[2];
 int ivn;

 if ((plen == 0 && param != ((void*)0)) ||
     (plen > 0 && param == ((void*)0)) ||
     plen > UINT8_MAX) {
  errno = EINVAL;
  return (-1);
 }

 iv[0].iov_base = &h;
 iv[0].iov_len = sizeof(h);
 ivn = 1;

 h.type = NG_HCI_CMD_PKT;
 h.opcode = htole16(opcode);
 if (plen > 0) {
  h.length = plen;

  iv[1].iov_base = param;
  iv[1].iov_len = plen;
  ivn = 2;
 } else
  h.length = 0;

 while (writev(s, iv, ivn) < 0) {
  if (errno == EAGAIN || errno == EINTR)
   continue;

  return (-1);
 }

 return (0);
}
