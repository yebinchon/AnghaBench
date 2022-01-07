
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct ibv_recv_wr {int num_sge; uintptr_t wr_id; struct ibv_sge* sg_list; int * next; } ;
struct cmatest_node {TYPE_2__* cma_id; scalar_t__ mem; TYPE_1__* mr; } ;
struct TYPE_4__ {int qp; } ;
struct TYPE_3__ {int lkey; } ;


 int ibv_post_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;
 int message_count ;
 int message_size ;
 int printf (char*,int) ;

__attribute__((used)) static int post_recvs(struct cmatest_node *node)
{
 struct ibv_recv_wr recv_wr, *recv_failure;
 struct ibv_sge sge;
 int i, ret = 0;

 if (!message_count)
  return 0;

 recv_wr.next = ((void*)0);
 recv_wr.sg_list = &sge;
 recv_wr.num_sge = 1;
 recv_wr.wr_id = (uintptr_t) node;

 sge.length = message_size;
 sge.lkey = node->mr->lkey;
 sge.addr = (uintptr_t) node->mem;

 for (i = 0; i < message_count && !ret; i++ ) {
  ret = ibv_post_recv(node->cma_id->qp, &recv_wr, &recv_failure);
  if (ret) {
   printf("failed to post receives: %d\n", ret);
   break;
  }
 }
 return ret;
}
