
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmatest_node {int cma_id; } ;


 int RDMA_OPTION_ID ;
 int RDMA_OPTION_ID_TOS ;
 int connect_error () ;
 int perror (char*) ;
 int rdma_resolve_route (int ,int) ;
 int rdma_set_option (int ,int ,int ,int *,int) ;
 scalar_t__ set_tos ;
 int tos ;

__attribute__((used)) static int addr_handler(struct cmatest_node *node)
{
 int ret;

 if (set_tos) {
  ret = rdma_set_option(node->cma_id, RDMA_OPTION_ID,
          RDMA_OPTION_ID_TOS, &tos, sizeof tos);
  if (ret)
   perror("udaddy: set TOS option failed");
 }

 ret = rdma_resolve_route(node->cma_id, 2000);
 if (ret) {
  perror("udaddy: resolve route failed");
  connect_error();
 }
 return ret;
}
