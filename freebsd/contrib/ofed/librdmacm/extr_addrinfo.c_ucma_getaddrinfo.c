
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int dummy; } ;
struct addrinfo {int dummy; } ;


 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 struct rdma_addrinfo const nohints ;
 int ucma_convert_to_ai (struct addrinfo*,struct rdma_addrinfo const*) ;
 int ucma_convert_to_rai (struct rdma_addrinfo*,struct rdma_addrinfo const*,struct addrinfo*) ;

__attribute__((used)) static int ucma_getaddrinfo(const char *node, const char *service,
       const struct rdma_addrinfo *hints,
       struct rdma_addrinfo *rai)
{
 struct addrinfo ai_hints;
 struct addrinfo *ai;
 int ret;

 if (hints != &nohints) {
  ucma_convert_to_ai(&ai_hints, hints);
  ret = getaddrinfo(node, service, &ai_hints, &ai);
 } else {
  ret = getaddrinfo(node, service, ((void*)0), &ai);
 }
 if (ret)
  return ret;

 ret = ucma_convert_to_rai(rai, hints, ai);
 freeaddrinfo(ai);
 return ret;
}
