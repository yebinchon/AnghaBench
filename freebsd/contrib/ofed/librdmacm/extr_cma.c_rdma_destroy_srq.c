
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int * srq; } ;


 int ibv_destroy_srq (int *) ;
 int ucma_destroy_cqs (struct rdma_cm_id*) ;

void rdma_destroy_srq(struct rdma_cm_id *id)
{
 ibv_destroy_srq(id->srq);
 id->srq = ((void*)0);
 ucma_destroy_cqs(id);
}
