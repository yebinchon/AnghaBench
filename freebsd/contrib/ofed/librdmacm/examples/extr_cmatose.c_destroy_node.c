
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmatest_node {TYPE_1__* cma_id; scalar_t__ pd; scalar_t__ mem; int mr; scalar_t__* cq; } ;
struct TYPE_3__ {scalar_t__ qp; } ;


 size_t RECV_CQ_INDEX ;
 size_t SEND_CQ_INDEX ;
 int free (scalar_t__) ;
 int ibv_dealloc_pd (scalar_t__) ;
 int ibv_dereg_mr (int ) ;
 int ibv_destroy_cq (scalar_t__) ;
 int rdma_destroy_id (TYPE_1__*) ;
 int rdma_destroy_qp (TYPE_1__*) ;

__attribute__((used)) static void destroy_node(struct cmatest_node *node)
{
 if (!node->cma_id)
  return;

 if (node->cma_id->qp)
  rdma_destroy_qp(node->cma_id);

 if (node->cq[SEND_CQ_INDEX])
  ibv_destroy_cq(node->cq[SEND_CQ_INDEX]);

 if (node->cq[RECV_CQ_INDEX])
  ibv_destroy_cq(node->cq[RECV_CQ_INDEX]);

 if (node->mem) {
  ibv_dereg_mr(node->mr);
  free(node->mem);
 }

 if (node->pd)
  ibv_dealloc_pd(node->pd);


 rdma_destroy_id(node->cma_id);
}
