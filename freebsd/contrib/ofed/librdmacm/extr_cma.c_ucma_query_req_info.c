
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;


 int af_ib_support ;
 int ucma_query_addr (struct rdma_cm_id*) ;
 int ucma_query_gid (struct rdma_cm_id*) ;
 int ucma_query_path (struct rdma_cm_id*) ;
 int ucma_query_route (struct rdma_cm_id*) ;

__attribute__((used)) static int ucma_query_req_info(struct rdma_cm_id *id)
{
 int ret;

 if (!af_ib_support)
  return ucma_query_route(id);

 ret = ucma_query_addr(id);
 if (ret)
  return ret;

 ret = ucma_query_gid(id);
 if (ret)
  return ret;

 ret = ucma_query_path(id);
 if (ret)
  return ret;

 return 0;
}
