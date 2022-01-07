
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_4__ {int sa_family; } ;
struct TYPE_5__ {int dst_addr; TYPE_1__ src_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {TYPE_3__ route; } ;
struct rdma_addrinfo {scalar_t__ ai_route_len; int ai_route; int * ai_dst_addr; void* ai_dst_len; TYPE_1__* ai_src_addr; void* ai_src_len; int ai_family; int ai_flags; } ;


 int RAI_ROUTEONLY ;
 int RDMA_OPTION_IB ;
 int RDMA_OPTION_IB_PATH ;
 int memset (struct rdma_addrinfo*,int ,int) ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_getaddrinfo (int *,int *,struct rdma_addrinfo*,struct rdma_addrinfo**) ;
 int rdma_set_option (struct rdma_cm_id*,int ,int ,int ,scalar_t__) ;
 void* ucma_addrlen (struct sockaddr*) ;

__attribute__((used)) static int ucma_set_ib_route(struct rdma_cm_id *id)
{
 struct rdma_addrinfo hint, *rai;
 int ret;

 memset(&hint, 0, sizeof hint);
 hint.ai_flags = RAI_ROUTEONLY;
 hint.ai_family = id->route.addr.src_addr.sa_family;
 hint.ai_src_len = ucma_addrlen((struct sockaddr *) &id->route.addr.src_addr);
 hint.ai_src_addr = &id->route.addr.src_addr;
 hint.ai_dst_len = ucma_addrlen((struct sockaddr *) &id->route.addr.dst_addr);
 hint.ai_dst_addr = &id->route.addr.dst_addr;

 ret = rdma_getaddrinfo(((void*)0), ((void*)0), &hint, &rai);
 if (ret)
  return ret;

 if (rai->ai_route_len)
  ret = rdma_set_option(id, RDMA_OPTION_IB, RDMA_OPTION_IB_PATH,
          rai->ai_route, rai->ai_route_len);
 else
  ret = -1;

 rdma_freeaddrinfo(rai);
 return ret;
}
