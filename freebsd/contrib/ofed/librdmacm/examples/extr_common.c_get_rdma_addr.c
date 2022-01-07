
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int ai_flags; int ai_src_len; int ai_src_addr; } ;


 int RAI_PASSIVE ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_getaddrinfo (char const*,char const*,struct rdma_addrinfo*,struct rdma_addrinfo**) ;

int get_rdma_addr(const char *src, const char *dst, const char *port,
    struct rdma_addrinfo *hints, struct rdma_addrinfo **rai)
{
 struct rdma_addrinfo rai_hints, *res;
 int ret;

 if (hints->ai_flags & RAI_PASSIVE)
  return rdma_getaddrinfo(src, port, hints, rai);

 rai_hints = *hints;
 if (src) {
  rai_hints.ai_flags |= RAI_PASSIVE;
  ret = rdma_getaddrinfo(src, ((void*)0), &rai_hints, &res);
  if (ret)
   return ret;

  rai_hints.ai_src_addr = res->ai_src_addr;
  rai_hints.ai_src_len = res->ai_src_len;
  rai_hints.ai_flags &= ~RAI_PASSIVE;
 }

 ret = rdma_getaddrinfo(dst, port, &rai_hints, rai);
 if (src)
  rdma_freeaddrinfo(res);

 return ret;
}
