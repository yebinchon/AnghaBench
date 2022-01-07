
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; scalar_t__ state; int slock; int conn_dest; int udp_sock; TYPE_3__* cm_id; } ;
typedef int socklen_t ;
struct TYPE_4__ {int dst_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;


 int EBADF ;
 int ERR (int ) ;
 scalar_t__ SOCK_STREAM ;
 int connect (int ,struct sockaddr const*,int ) ;
 int ds_get_dest (struct rsocket*,struct sockaddr const*,int ,int *) ;
 int ds_init_ep (struct rsocket*) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int memcpy (int *,struct sockaddr const*,int ) ;
 int rs_do_connect (struct rsocket*) ;
 scalar_t__ rs_init ;

int rconnect(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
 struct rsocket *rs;
 int ret;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return ERR(EBADF);
 if (rs->type == SOCK_STREAM) {
  memcpy(&rs->cm_id->route.addr.dst_addr, addr, addrlen);
  ret = rs_do_connect(rs);
 } else {
  if (rs->state == rs_init) {
   ret = ds_init_ep(rs);
   if (ret)
    return ret;
  }

  fastlock_acquire(&rs->slock);
  ret = connect(rs->udp_sock, addr, addrlen);
  if (!ret)
   ret = ds_get_dest(rs, addr, addrlen, &rs->conn_dest);
  fastlock_release(&rs->slock);
 }
 return ret;
}
