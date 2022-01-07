
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rsocket {int udp_sock; int index; TYPE_5__* cm_id; } ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_7__ {TYPE_1__ src_addr; } ;
struct TYPE_8__ {TYPE_2__ addr; } ;
struct TYPE_10__ {TYPE_4__* channel; TYPE_3__ route; } ;
struct TYPE_9__ {int fd; } ;


 int AF_IB ;
 int AF_INET ;
 int AF_INET6 ;
 int ENOMEM ;
 int ENOTSUP ;
 int ERR (int ) ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int RDMA_PS_TCP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int ds_init (struct rsocket*,int) ;
 int rdma_create_id (int *,TYPE_5__**,struct rsocket*,int ) ;
 struct rsocket* rs_alloc (int *,int) ;
 int rs_configure () ;
 int rs_free (struct rsocket*) ;
 int rs_insert (struct rsocket*,int) ;

int rsocket(int domain, int type, int protocol)
{
 struct rsocket *rs;
 int index, ret;

 if ((domain != AF_INET && domain != AF_INET6 && domain != AF_IB) ||
     ((type != SOCK_STREAM) && (type != SOCK_DGRAM)) ||
     (type == SOCK_STREAM && protocol && protocol != IPPROTO_TCP) ||
     (type == SOCK_DGRAM && protocol && protocol != IPPROTO_UDP))
  return ERR(ENOTSUP);

 rs_configure();
 rs = rs_alloc(((void*)0), type);
 if (!rs)
  return ERR(ENOMEM);

 if (type == SOCK_STREAM) {
  ret = rdma_create_id(((void*)0), &rs->cm_id, rs, RDMA_PS_TCP);
  if (ret)
   goto err;

  rs->cm_id->route.addr.src_addr.sa_family = domain;
  index = rs->cm_id->channel->fd;
 } else {
  ret = ds_init(rs, domain);
  if (ret)
   goto err;

  index = rs->udp_sock;
 }

 ret = rs_insert(rs, index);
 if (ret < 0)
  goto err;

 return rs->index;

err:
 rs_free(rs);
 return ret;
}
