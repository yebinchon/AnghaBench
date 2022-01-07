
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; int rlock; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 scalar_t__ SOCK_DGRAM ;
 int ds_recvfrom (struct rsocket*,void*,size_t,int,struct sockaddr*,int *) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm ;
 struct rsocket* idm_at (int *,int) ;
 int rgetpeername (int,struct sockaddr*,int *) ;
 int rrecv (int,void*,size_t,int) ;

ssize_t rrecvfrom(int socket, void *buf, size_t len, int flags,
    struct sockaddr *src_addr, socklen_t *addrlen)
{
 struct rsocket *rs;
 int ret;

 rs = idm_at(&idm, socket);
 if (rs->type == SOCK_DGRAM) {
  fastlock_acquire(&rs->rlock);
  ret = ds_recvfrom(rs, buf, len, flags, src_addr, addrlen);
  fastlock_release(&rs->rlock);
  return ret;
 }

 ret = rrecv(socket, buf, len, flags);
 if (ret > 0 && src_addr)
  rgetpeername(socket, src_addr, addrlen);

 return ret;
}
