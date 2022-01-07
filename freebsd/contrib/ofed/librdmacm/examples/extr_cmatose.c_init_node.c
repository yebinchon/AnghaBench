
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct ibv_qp_init_attr {int sq_sig_all; void* recv_cq; void* send_cq; int qp_type; struct cmatest_node* qp_context; TYPE_1__ cap; } ;
struct cmatest_node {int pd; TYPE_2__* cma_id; void** cq; } ;
struct TYPE_4__ {int verbs; } ;


 int ENOMEM ;
 int IBV_QPT_RC ;
 size_t RECV_CQ_INDEX ;
 size_t SEND_CQ_INDEX ;
 int create_message (struct cmatest_node*) ;
 int ibv_alloc_pd (int ) ;
 void* ibv_create_cq (int ,int,struct cmatest_node*,int *,int ) ;
 int memset (struct ibv_qp_init_attr*,int ,int) ;
 int message_count ;
 int perror (char*) ;
 int printf (char*,...) ;
 int rdma_create_qp (TYPE_2__*,int ,struct ibv_qp_init_attr*) ;

__attribute__((used)) static int init_node(struct cmatest_node *node)
{
 struct ibv_qp_init_attr init_qp_attr;
 int cqe, ret;

 node->pd = ibv_alloc_pd(node->cma_id->verbs);
 if (!node->pd) {
  ret = -ENOMEM;
  printf("cmatose: unable to allocate PD\n");
  goto out;
 }

 cqe = message_count ? message_count : 1;
 node->cq[SEND_CQ_INDEX] = ibv_create_cq(node->cma_id->verbs, cqe, node, ((void*)0), 0);
 node->cq[RECV_CQ_INDEX] = ibv_create_cq(node->cma_id->verbs, cqe, node, ((void*)0), 0);
 if (!node->cq[SEND_CQ_INDEX] || !node->cq[RECV_CQ_INDEX]) {
  ret = -ENOMEM;
  printf("cmatose: unable to create CQ\n");
  goto out;
 }

 memset(&init_qp_attr, 0, sizeof init_qp_attr);
 init_qp_attr.cap.max_send_wr = cqe;
 init_qp_attr.cap.max_recv_wr = cqe;
 init_qp_attr.cap.max_send_sge = 1;
 init_qp_attr.cap.max_recv_sge = 1;
 init_qp_attr.qp_context = node;
 init_qp_attr.sq_sig_all = 1;
 init_qp_attr.qp_type = IBV_QPT_RC;
 init_qp_attr.send_cq = node->cq[SEND_CQ_INDEX];
 init_qp_attr.recv_cq = node->cq[RECV_CQ_INDEX];
 ret = rdma_create_qp(node->cma_id, node->pd, &init_qp_attr);
 if (ret) {
  perror("cmatose: unable to create QP");
  goto out;
 }

 ret = create_message(node);
 if (ret) {
  printf("cmatose: failed to create messages: %d\n", ret);
  goto out;
 }
out:
 return ret;
}
