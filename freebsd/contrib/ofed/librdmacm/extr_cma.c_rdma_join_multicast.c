
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;


 int EINVAL ;
 int ERR (int ) ;
 int rdma_join_multicast2 (struct rdma_cm_id*,struct sockaddr*,int,void*) ;
 int ucma_addrlen (struct sockaddr*) ;

int rdma_join_multicast(struct rdma_cm_id *id, struct sockaddr *addr,
   void *context)
{
 int addrlen;

 addrlen = ucma_addrlen(addr);
 if (!addrlen)
  return ERR(EINVAL);

 return rdma_join_multicast2(id, addr, addrlen, context);
}
