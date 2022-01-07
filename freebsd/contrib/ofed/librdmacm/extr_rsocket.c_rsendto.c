
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; scalar_t__ state; int slock; TYPE_1__* conn_dest; } ;
typedef int ssize_t ;
typedef int socklen_t ;
struct TYPE_2__ {int addr; } ;


 int EISCONN ;
 int ERR (int ) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ ds_compare_addr (struct sockaddr const*,int *) ;
 int ds_get_dest (struct rsocket*,struct sockaddr const*,int ,TYPE_1__**) ;
 int ds_init_ep (struct rsocket*) ;
 int dsend (struct rsocket*,void const*,size_t,int) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm ;
 struct rsocket* idm_at (int *,int) ;
 scalar_t__ rs_init ;
 int rsend (int,void const*,size_t,int) ;

ssize_t rsendto(int socket, const void *buf, size_t len, int flags,
  const struct sockaddr *dest_addr, socklen_t addrlen)
{
 struct rsocket *rs;
 int ret;

 rs = idm_at(&idm, socket);
 if (rs->type == SOCK_STREAM) {
  if (dest_addr || addrlen)
   return ERR(EISCONN);

  return rsend(socket, buf, len, flags);
 }

 if (rs->state == rs_init) {
  ret = ds_init_ep(rs);
  if (ret)
   return ret;
 }

 fastlock_acquire(&rs->slock);
 if (!rs->conn_dest || ds_compare_addr(dest_addr, &rs->conn_dest->addr)) {
  ret = ds_get_dest(rs, dest_addr, addrlen, &rs->conn_dest);
  if (ret)
   goto out;
 }

 ret = dsend(rs, buf, len, flags);
out:
 fastlock_release(&rs->slock);
 return ret;
}
