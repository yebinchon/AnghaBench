
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ qp_type; int * recv_cq_channel; int * send_cq_channel; int * recv_cq; int * send_cq; scalar_t__ srq; } ;


 scalar_t__ IBV_QPT_XRC_RECV ;
 int ibv_destroy_comp_channel (int *) ;
 int ibv_destroy_cq (int *) ;

__attribute__((used)) static void ucma_destroy_cqs(struct rdma_cm_id *id)
{
 if (id->qp_type == IBV_QPT_XRC_RECV && id->srq)
  return;

 if (id->recv_cq) {
  ibv_destroy_cq(id->recv_cq);
  if (id->send_cq && (id->send_cq != id->recv_cq)) {
   ibv_destroy_cq(id->send_cq);
   id->send_cq = ((void*)0);
  }
  id->recv_cq = ((void*)0);
 }

 if (id->recv_cq_channel) {
  ibv_destroy_comp_channel(id->recv_cq_channel);
  if (id->send_cq_channel && (id->send_cq_channel != id->recv_cq_channel)) {
   ibv_destroy_comp_channel(id->send_cq_channel);
   id->send_cq_channel = ((void*)0);
  }
  id->recv_cq_channel = ((void*)0);
 }
}
