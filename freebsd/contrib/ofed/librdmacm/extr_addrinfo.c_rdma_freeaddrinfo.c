
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {struct rdma_addrinfo* ai_dst_addr; struct rdma_addrinfo* ai_src_addr; struct rdma_addrinfo* ai_dst_canonname; struct rdma_addrinfo* ai_src_canonname; struct rdma_addrinfo* ai_route; struct rdma_addrinfo* ai_connect; struct rdma_addrinfo* ai_next; } ;


 int free (struct rdma_addrinfo*) ;

void rdma_freeaddrinfo(struct rdma_addrinfo *res)
{
 struct rdma_addrinfo *rai;

 while (res) {
  rai = res;
  res = res->ai_next;

  if (rai->ai_connect)
   free(rai->ai_connect);

  if (rai->ai_route)
   free(rai->ai_route);

  if (rai->ai_src_canonname)
   free(rai->ai_src_canonname);

  if (rai->ai_dst_canonname)
   free(rai->ai_dst_canonname);

  if (rai->ai_src_addr)
   free(rai->ai_src_addr);

  if (rai->ai_dst_addr)
   free(rai->ai_dst_addr);

  free(rai);
 }
}
