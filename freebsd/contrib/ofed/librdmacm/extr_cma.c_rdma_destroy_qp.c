
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int * qp; } ;


 int ibv_destroy_qp (int *) ;
 int ucma_destroy_cqs (struct rdma_cm_id*) ;

void rdma_destroy_qp(struct rdma_cm_id *id)
{
 ibv_destroy_qp(id->qp);
 id->qp = ((void*)0);
 ucma_destroy_cqs(id);
}
