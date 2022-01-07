
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmatest_node {TYPE_1__* cma_id; scalar_t__ pd; scalar_t__ mem; int mr; scalar_t__ cq; scalar_t__ ah; } ;
struct TYPE_3__ {scalar_t__ qp; } ;


 int free (scalar_t__) ;
 int ibv_dealloc_pd (scalar_t__) ;
 int ibv_dereg_mr (int ) ;
 int ibv_destroy_ah (scalar_t__) ;
 int ibv_destroy_cq (scalar_t__) ;
 int rdma_destroy_id (TYPE_1__*) ;
 int rdma_destroy_qp (TYPE_1__*) ;

__attribute__((used)) static void destroy_node(struct cmatest_node *node)
{
 if (!node->cma_id)
  return;

 if (node->ah)
  ibv_destroy_ah(node->ah);

 if (node->cma_id->qp)
  rdma_destroy_qp(node->cma_id);

 if (node->cq)
  ibv_destroy_cq(node->cq);

 if (node->mem) {
  ibv_dereg_mr(node->mr);
  free(node->mem);
 }

 if (node->pd)
  ibv_dealloc_pd(node->pd);


 rdma_destroy_id(node->cma_id);
}
