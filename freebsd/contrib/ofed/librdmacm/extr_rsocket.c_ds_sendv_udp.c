
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct rsocket {int udp_sock; TYPE_8__* conn_dest; } ;
struct msghdr {int msg_iovlen; struct iovec* msg_iov; int msg_namelen; TYPE_7__* msg_name; } ;
struct iovec {scalar_t__ iov_len; struct ds_udp_header* iov_base; } ;
struct TYPE_11__ {struct iovec* ipv6; int ipv4; } ;
struct ds_udp_header {int version; scalar_t__ length; TYPE_3__ addr; void* qpn; scalar_t__ reserved; int op; void* tag; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_15__ {int sa; } ;
struct TYPE_16__ {TYPE_7__ addr; TYPE_6__* qp; } ;
struct TYPE_12__ {struct iovec const ipv6; int ipv4; } ;
struct TYPE_13__ {int version; TYPE_4__ addr; } ;
struct TYPE_14__ {TYPE_5__ hdr; TYPE_2__* cm_id; } ;
struct TYPE_10__ {TYPE_1__* qp; } ;
struct TYPE_9__ {int qp_num; } ;


 scalar_t__ DS_UDP_IPV4_HDR_LEN ;
 scalar_t__ DS_UDP_IPV6_HDR_LEN ;
 int DS_UDP_TAG ;
 int ENOTSUP ;
 scalar_t__ ERR (int ) ;
 void* htobe32 (int) ;
 int memcpy (struct iovec*,struct iovec const*,int) ;
 int memset (struct msghdr*,int ,int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int) ;
 int ucma_addrlen (int *) ;

__attribute__((used)) static ssize_t ds_sendv_udp(struct rsocket *rs, const struct iovec *iov,
       int iovcnt, int flags, uint8_t op)
{
 struct ds_udp_header hdr;
 struct msghdr msg;
 struct iovec miov[8];
 ssize_t ret;

 if (iovcnt > 8)
  return ERR(ENOTSUP);

 hdr.tag = htobe32(DS_UDP_TAG);
 hdr.version = rs->conn_dest->qp->hdr.version;
 hdr.op = op;
 hdr.reserved = 0;
 hdr.qpn = htobe32(rs->conn_dest->qp->cm_id->qp->qp_num & 0xFFFFFF);
 if (rs->conn_dest->qp->hdr.version == 4) {
  hdr.length = DS_UDP_IPV4_HDR_LEN;
  hdr.addr.ipv4 = rs->conn_dest->qp->hdr.addr.ipv4;
 } else {
  hdr.length = DS_UDP_IPV6_HDR_LEN;
  memcpy(hdr.addr.ipv6, &rs->conn_dest->qp->hdr.addr.ipv6, 16);
 }

 miov[0].iov_base = &hdr;
 miov[0].iov_len = hdr.length;
 if (iov && iovcnt)
  memcpy(&miov[1], iov, sizeof(*iov) * iovcnt);

 memset(&msg, 0, sizeof msg);
 msg.msg_name = &rs->conn_dest->addr;
 msg.msg_namelen = ucma_addrlen(&rs->conn_dest->addr.sa);
 msg.msg_iov = miov;
 msg.msg_iovlen = iovcnt + 1;
 ret = sendmsg(rs->udp_sock, &msg, flags);
 return ret > 0 ? ret - hdr.length : ret;
}
